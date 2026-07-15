// curvetime.js — compiles curve/events/offset params into phase positions for what~
// two lanes: lane 1 -> outlet 0, lane 2 -> outlet 1; phraseEvents is shared

autowatch = 1;
inlets = 1;
outlets = 2;

var state = {
  phraseEvents: 16,
  lanes: [
    { curve: 1.5, events: 8, offset: 0 },
    { curve: 1.5, events: 8, offset: 0 },
  ],
};

var debugMode = false;

// --- lane 1 params ---

function curve(v) {
  state.lanes[0].curve = Math.max(0.01, v);
  emit(0);
}

function events(v) {
  state.lanes[0].events = Math.max(0, Math.round(v));
  emit(0);
}

function offset(v) {
  state.lanes[0].offset = Math.round(v);
  emit(0);
}

// --- lane 2 params ---

function curve2(v) {
  state.lanes[1].curve = Math.max(0.01, v);
  emit(1);
}

function events2(v) {
  state.lanes[1].events = Math.max(0, Math.round(v));
  emit(1);
}

function offset2(v) {
  state.lanes[1].offset = Math.round(v);
  emit(1);
}

// --- shared ---

function phraseEvents(v) {
  state.phraseEvents = Math.max(2, Math.round(v));
  emitAll();
}

function debug(v) {
  debugMode = v == 1;
}

// manual re-emit (e.g. after reloading what~)
function bang() {
  emitAll();
}

// --- compile + emit ---

function emitAll() {
  emit(0);
  emit(1);
}

function emit(lane) {
  var N = state.phraseEvents;
  var L = state.lanes[lane];
  var positions = [];

  for (var i = 0; i < N; i++) {
    // offset rotates the active window around the phrase grid:
    // grid position i fires if it falls within [offset, offset + events) mod N
    var winPos = (((i - L.offset) % N) + N) % N;
    if (winPos < L.events) {
      // curved phase position in [0, 1)
      // note: t = i/N (not i/(N-1) as in the SC version) so the last
      // event never lands exactly on the wrap point
      positions.push(Math.pow(i / N, L.curve));
    }
  }

  if (debugMode) {
    post(
      "[curvetime] lane=" +
        (lane + 1) +
        " N=" +
        N +
        " events=" +
        L.events +
        " offset=" +
        L.offset +
        " curve=" +
        L.curve +
        " -> " +
        positions.length +
        " positions\n",
    );
    post("[curvetime] " + positions.join(" ") + "\n");
  }

  outlet(lane, "clear");
  if (positions.length > 0) {
    outlet(lane, positions);
  }
}

function loadbang() {
  emitAll();
}
