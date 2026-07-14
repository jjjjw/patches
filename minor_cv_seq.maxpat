{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 3,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 185.0, 188.0, 745.0, 725.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 3,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 655.0, 225.0, 1000.0, 780.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "semitone value (int or float, e.g. 0, 2, 12, -5)",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 50.0, 30.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 50.0, 90.0, 74.0, 22.0 ],
									"text" : "*~ 0.007542"
								}

							}
, 							{
								"box" : 								{
									"comment" : "CV signal out (connect to dac~ channel for A-110-2)",
									"id" : "obj-4",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 220.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 294.0, 94.0, 256.0, 47.0 ],
									"text" : "A-110-2 calibration: 0.0905 signal units per octave, so one semitone = 0.0905 / 12 = 0.00754167. Positive semitones = positive CV."
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
 ],
						"originid" : "pat-150"
					}
,
					"patching_rect" : [ 45.8828125, 411.01953125, 90.0, 22.0 ],
					"saved_object_attributes" : 					{
						"globalpatchername" : ""
					}
,
					"text" : "p voltage_table"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-76",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1193.07421875, 144.01953125, 242.0, 33.0 ],
					"text" : "accents — semitones that output an accent gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1193.07421875, 186.3203125, 240.0, 24.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1193.07421875, 220.3203125, 97.0, 22.0 ],
					"text" : "prepend accents"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-75",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 353.57421875, 453.01953125, 89.0, 22.0 ],
					"text" : "index~ accents"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 795.07421875, 493.01953125, 107.0, 22.0 ],
					"text" : "buffer~ accents 10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 343.07421875, 523.01953125, 29.5, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1117.07421875, 34.01953125, 150.0, 20.0 ],
					"text" : "Patterns"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1117.07421875, 60.01953125, 150.0, 33.0 ],
					"text" : "seq 0 5 1 3 4 7\nmod 0 0 1 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 380.07421875, 42.3203125, 150.0, 20.0 ],
					"text" : "Set cycle length"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 525.07421875, 201.01953125, 150.0, 20.0 ],
					"text" : "Visualize the sequence"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 45.8828125, 161.3203125, 59.0, 22.0 ],
					"text" : "route text"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 243.07421875, 193.3203125, 58.0, 22.0 ],
					"text" : "print time"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 253.07421875, 42.8203125, 112.0, 19.0 ],
					"text" : "6.0.0"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-24",
					"maxclass" : "number~",
					"mode" : 2,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "float" ],
					"patching_rect" : [ 171.07421875, 411.01953125, 56.0, 22.0 ],
					"sig" : 0.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 71.3828125, 42.3203125, 150.0, 20.0 ],
					"text" : "Generate sequence"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 71.3828125, 91.01953125, 30.0, 22.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"text" : "v8",
					"textfile" : 					{
						"text" : "\n// Sequence logic. Expands the step sequence, pokes SEMITONE offsets (natural\n// minor) into buffer~ steps and note/rest flags into buffer~ gates.\n//\n// tokens: integers = scale degrees, \"~\" = rest\n// steps[i] = minorSemis(seq[i % seqLen] + mods[i % modLen]), length = lcm(seqLen, modLen)\n// a \"~\" in seq OR mods makes that expanded step a rest (gate flag 0)\n//\n// messages:\n//   seq 0 2 5 4     -> base degree sequence (textedit via prepend seq)\n//   mods 0 0 1      -> cyclic degree modifiers (textedit via prepend mods)\n//   accents 0 7     -> accent lane 1 degrees (textedit via prepend accents)\n//   accents2 3 5    -> accent lane 2 degrees (textedit via prepend accents2)\n//\n// outlets:\n//   0: expanded list with rests shown as ~ (for print/inspection)\n//   1: step count N (drives *~ on the phasor)\n//   2: numeric viz list, rests as -15 (feeds the read-only multislider)\n\ninlets = 1;\noutlets = 3;\n\nconst OCT_DOWN = 2;\nconst OCT_UP = 3;\nconst MIN_DEG = -OCT_DOWN * 7;   // -14\nconst MAX_DEG = OCT_UP * 7;      //  21\nconst REST = \"~\";\nconst VIZ_REST = MIN_DEG - 1;    // -15, pins rests to the bottom of the viz\n\nconst MINOR = [0, 2, 3, 5, 7, 8, 10]; // natural minor semitone offsets\n\nlet seqArr = [0, 2, 5, 4];       // numbers, or null for rests\nlet modArr = [0];\nlet accentsArr = [];\nlet accents2Arr = [];\nlet lastLen = 0;\n\nfunction gcd(a, b) { return b ? gcd(b, a % b) : a; }\nfunction lcm(a, b) { return (a * b) / gcd(a, b); }\nconst clampDeg = (d) => Math.max(MIN_DEG, Math.min(MAX_DEG, d));\n\n// textedit hands us symbols; message boxes hand us numbers — accept both\nfunction parseTokens(vals) {\n    if (vals[0] === \"text\") vals = vals.slice(1); // textedit prefixes output with \"text\"\n    return vals.map((v) => {\n        if (typeof v === \"number\") return Math.round(v);\n        const s = String(v);\n        if (s === REST) return null;\n        const n = Number(s);\n        return Number.isFinite(n) ? Math.round(n) : null;\n    });\n}\n\nfunction degToSemi(d) {\n    const oct = Math.floor(d / 7);\n    const step = ((d % 7) + 7) % 7;\n    return oct * 12 + MINOR[step];\n}\n\nfunction rebuild() {\n    const n = lcm(seqArr.length, modArr.length);\n    const degs = []; // number | null\n    for (let i = 0; i < n; i++) {\n        const s = seqArr[i % seqArr.length];\n        const m = modArr[i % modArr.length];\n        degs.push(s === null || m === null ? null : clampDeg(s + m));\n    }\n    const steps = new Buffer(\"steps\");\n    const gates = new Buffer(\"gates\");\n    const accents = new Buffer(\"accents\");\n    const accents2Buf = new Buffer(\"accents2\");\n    // only resize when the expanded length actually changes\n    if (n !== lastLen) {\n        steps.send(\"sizeinsamps\", n);\n        gates.send(\"sizeinsamps\", n);\n        accents.send(\"sizeinsamps\", n);\n        accents2Buf.send(\"sizeinsamps\", n);\n        lastLen = n;\n    }\n    let lastSemi = 0; // rests hold the previous pitch; gate flag mutes them anyway\n    for (let i = 0; i < n; i++) {\n        const d = degs[i];\n        if (d === null) {\n            steps.poke(1, i, lastSemi);\n            gates.poke(1, i, 0);\n            accents.poke(1, i, 0);\n            accents2Buf.poke(1, i, 0);\n        } else {\n            lastSemi = degToSemi(d);\n            steps.poke(1, i, lastSemi);\n            gates.poke(1, i, 1);\n            accents.poke(1, i, accentsArr.indexOf(d) !== -1 ? 1 : 0); \n            accents2Buf.poke(1, i, accents2Arr.indexOf(d) !== -1 ? 1 : 0);\n        }\n    }\n    outlet(2, degs.map((d) => (d === null ? VIZ_REST : d)));\n    outlet(1, n);\n    outlet(0, degs.map((d) => (d === null ? REST : d)));\n}\n\nfunction seq(...vals) {\n    if (vals.length) { seqArr = parseTokens(vals); rebuild(); }\n}\n\nfunction mods(...vals) {\n    if (vals.length) { modArr = parseTokens(vals); rebuild(); }\n}\n\nfunction accents(...vals) {\n    if (vals.length) { accentsArr = parseTokens(vals); rebuild(); }\n}\n\nfunction accents2(...vals) {\n    if (vals.length) { accents2Arr = parseTokens(vals); rebuild(); }\n}\n\nfunction loadbang() {\n    rebuild();\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 243.07421875, 155.01953125, 70.0, 22.0 ],
					"text" : "print steps"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 45.8828125, 211.01953125, 129.0, 22.0 ],
					"text" : "phasor~ 4.0.0 @lock 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 45.8828125, 253.01953125, 50.0, 22.0 ],
					"text" : "*~ 12"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 45.8828125, 293.01953125, 122.0, 22.0 ],
					"text" : "round~ 1 @nearest 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 45.8828125, 333.01953125, 80.0, 22.0 ],
					"text" : "index~ steps"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 235.171875, 229.01953125, 200.0, 20.0 ],
					"text" : "root (MIDI note, default 57 = A3)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-15",
					"maxclass" : "number~",
					"mode" : 2,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "float" ],
					"patching_rect" : [ 100.07421875, 469.01953125, 100.0, 22.0 ],
					"sig" : 0.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 199.07421875, 513.01953125, 24.0, 24.0 ],
					"svg" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 0,
					"patching_rect" : [ 45.8828125, 573.01953125, 102.0, 22.0 ],
					"text" : "dac~ 15 16 17 18"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 171.93359375, 574.01953125, 560.0, 20.0 ],
					"text" : "<- osc on ch 1, gate on ch 2 (amp env happens in the rack); change to dac~ 15 16 to feed the ES-10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 670.0, 7.0, 240.0, 20.0 ],
					"text" : "seq — type degrees, ~ = rest"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"linecount" : 2,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 799.0, 34.01953125, 239.93359375, 55.98046875 ],
					"text" : "0 3 5 8 0 3 5 8 0 3 5 8 0 3 5 8 0 3 5 10 0 3 5 9"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 798.93359375, 100.3203125, 80.0, 22.0 ],
					"text" : "prepend seq"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 798.93359375, 162.3203125, 380.0, 20.0 ],
					"text" : "mods — cyclic modifiers, ~ forces a rest at that cycle position"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 798.93359375, 186.3203125, 240.0, 24.0 ],
					"text" : "0 0 0 1 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 798.93359375, 220.3203125, 90.0, 22.0 ],
					"text" : "prepend mods"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-81",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 798.93359375, 278.3203125, 60.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-82",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 798.93359375, 308.3203125, 58.0, 22.0 ],
					"text" : "deferlow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "bang" ],
					"patching_rect" : [ 798.93359375, 338.3203125, 60.0, 22.0 ],
					"text" : "t b b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-84",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 889.93359375, 373.3203125, 35.0, 22.0 ],
					"text" : "0.5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-86",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 869.93359375, 278.3203125, 330.0, 20.0 ],
					"text" : "on load: push both texteedits into v8 + init pulse width"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 376.93359375, 116.3203125, 40.0, 22.0 ],
					"text" : "t l l"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 426.93359375, 148.3203125, 50.0, 22.0 ],
					"text" : "zl len"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 426.93359375, 180.3203125, 80.0, 22.0 ],
					"text" : "prepend size"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"ignoreclick" : 1,
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 427.171875, 233.3203125, 240.0, 80.0 ],
					"setminmax" : [ -15.0, 21.0 ],
					"size" : 120
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 795.07421875, 426.3203125, 95.0, 22.0 ],
					"text" : "buffer~ steps 10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 795.0, 459.0, 95.0, 22.0 ],
					"text" : "buffer~ gates 10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 359.07421875, 379.01953125, 82.0, 22.0 ],
					"text" : "index~ gates"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 299.93359375, 407.3203125, 33.0, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 299.93359375, 306.3203125, 33.0, 22.0 ],
					"text" : "-~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 299.93359375, 340.3203125, 50.0, 22.0 ],
					"text" : "<~ 0.5"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-53",
					"maxclass" : "flonum",
					"maximum" : 0.95,
					"minimum" : 0.05,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 385.171875, 323.2578125, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 437.171875, 324.2578125, 150.0, 20.0 ],
					"text" : "gate width (0-1 of step)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 786.07421875, 560.51953125, 280.0, 47.0 ],
					"text" : "per-step gate (sub-ramp < width) multiplied by the note/rest flag from buffer~ gates — sent straight to ch 2 for the ES-10 / rack envelope"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-90",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1193.07421875, 264.3203125, 242.0, 33.0 ],
					"text" : "accents 2 — semitones that output a second accent gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-91",
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1193.07421875, 306.3203125, 240.0, 24.0 ],
					"text" : "3 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-92",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1193.07421875, 340.3203125, 104.0, 22.0 ],
					"text" : "prepend accents2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-93",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 795.07421875, 523.01953125, 115.0, 22.0 ],
					"text" : "buffer~ accents2 10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-94",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 472.07421875, 453.01953125, 96.0, 22.0 ],
					"text" : "index~ accents2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-95",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 461.57421875, 523.01953125, 29.5, 22.0 ],
					"text" : "*~"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"order" : 1,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"order" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"order" : 4,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 1 ],
					"order" : 3,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"order" : 1,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"order" : 2,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"order" : 0,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"order" : 1,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"order" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"order" : 0,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"order" : 1,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"order" : 1,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"order" : 0,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"order" : 0,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"order" : 1,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"source" : [ "obj-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"source" : [ "obj-4", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 1 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 2 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"source" : [ "obj-64", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 1 ],
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 1 ],
					"order" : 2,
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"order" : 1,
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"order" : 0,
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 1 ],
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-82", 0 ],
					"source" : [ "obj-81", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"source" : [ "obj-82", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"source" : [ "obj-83", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 0 ],
					"source" : [ "obj-83", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-92", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 1 ],
					"source" : [ "obj-94", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 3 ],
					"source" : [ "obj-95", 0 ]
				}

			}
 ],
		"originid" : "pat-148",
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
