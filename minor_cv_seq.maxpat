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
		"rect" : [ 194.0, 185.0, 760.0, 560.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
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
					"patching_rect" : [ 150.0, 355.0, 56.0, 22.0 ],
					"sig" : 0.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 70.0, 101.0, 150.0, 20.0 ],
					"text" : "Create sequence"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 503.0, 133.0, 150.0, 20.0 ],
					"text" : "Fill the voltage table "
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 470.0, 132.0, 21.0, 22.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"text" : "v8",
					"textfile" : 					{
						"text" : "// Fill voltage table\n\ninlets = 1;\noutlets = 0;\n\nconst MINOR = [0, 2, 3, 5, 7, 8, 10];\nconst OCT_DOWN = 2;\nconst OCT_UP = 3;\nconst OFFSET = OCT_DOWN * 7;                 // 14\nconst TABLE_LEN = OFFSET + OCT_UP * 7 + 1;   // 36\n\nconst VOLT_SCALE = 0.1; // 1.0 signal = 10V\n\nfunction fill() {\n    const b = new Buffer(\"volts\");\n    b.send(\"sizeinsamps\", TABLE_LEN);\n    for (let i = 0; i < TABLE_LEN; i++) {\n        const deg = i - OFFSET;\n        const oct = Math.floor(deg / 7);\n        const step = ((deg % 7) + 7) % 7;\n        const semis = oct * 12 + MINOR[step];\n        b.poke(1, i, (semis / 12) * VOLT_SCALE);\n    }\n}\n\nfunction bang() { fill(); }\nfunction loadbang() { fill(); }",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 15.0, 420.0, 20.0 ],
					"text" : "minor scale CV sequencer — degrees -14..+21 (2 oct down / 3 up), 1V/oct"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 60.0, 90.0, 22.0 ],
					"text" : "seq 0 2 5 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 135.0, 60.0, 80.0, 22.0 ],
					"text" : "mods 0 0 1"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 30.0, 100.0, 21.0, 22.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"text" : "v8",
					"textfile" : 					{
						"text" : "\n// Sequence logic. Outputs scale-degree indexes.\n//\n// Writes buffer~ steps : expanded step sequence = seq[n % seqLen] + mods[n % modLen],\n//                        length = lcm(seqLen, modLen)\n//\n// messages:\n//   seq 0 2 5 4     -> base index sequence\n//   mods 0 0 1      -> cyclic index modifiers\n//\n// outlets:\n//   0: expanded index list (for inspection)\n//   1: step count N (drives *~ on the phasor)\n\ninlets = 1;\noutlets = 2;\n\nconst OCT_DOWN = 2;\nconst OCT_UP = 3;\nconst MIN_DEG = -OCT_DOWN * 7;   // -14\nconst MAX_DEG = OCT_UP * 7;      //  21\n\nlet seqArr = [0, 2, 5, 4];\nlet modArr = [0];\n\nfunction gcd(a, b) { return b ? gcd(b, a % b) : a; }\nfunction lcm(a, b) { return (a * b) / gcd(a, b); }\nconst clampDeg = (d) => Math.max(MIN_DEG, Math.min(MAX_DEG, d));\n\nfunction rebuild() {\n    const n = lcm(seqArr.length, modArr.length);\n    const out = [];\n    for (let i = 0; i < n; i++) {\n        out.push(clampDeg(seqArr[i % seqArr.length] + modArr[i % modArr.length]));\n    }\n    const b = new Buffer(\"steps\");\n    b.send(\"sizeinsamps\", n);\n    for (let i = 0; i < n; i++) b.poke(1, i, out[i]);\n    outlet(1, n);\n    outlet(0, out);\n}\n\nfunction seq(...vals) {\n    if (vals.length) { seqArr = vals; rebuild(); }\n}\n\nfunction mods(...vals) {\n    if (vals.length) { modArr = vals; rebuild(); }\n}\n\nfunction loadbang() {\n    rebuild();\n}\n",
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
					"patching_rect" : [ 150.0, 140.0, 70.0, 22.0 ],
					"text" : "print steps"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 470.0, 60.0, 100.0, 22.0 ],
					"text" : "buffer~ steps 12"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 470.0, 95.0, 100.0, 22.0 ],
					"text" : "buffer~ volts 36"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 30.0, 195.0, 119.0, 22.0 ],
					"text" : "phasor~ 1.0.0 @lock"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 30.0, 235.0, 50.0, 22.0 ],
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
					"patching_rect" : [ 30.0, 275.0, 122.0, 22.0 ],
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
					"patching_rect" : [ 30.0, 315.0, 80.0, 22.0 ],
					"text" : "index~ steps"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 30.0, 355.0, 50.0, 22.0 ],
					"text" : "+~ 14"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 30.0, 395.0, 80.0, 22.0 ],
					"text" : "index~ volts"
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
					"patching_rect" : [ 150.0, 395.0, 100.0, 22.0 ],
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
					"patching_rect" : [ 100.0, 435.0, 24.0, 24.0 ],
					"svg" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 475.0, 50.0, 22.0 ],
					"text" : "dac~ 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 88.0, 476.0, 320.0, 20.0 ],
					"text" : "<- set to ES-10 output channel; 0.1 signal = 1V (10V FS)"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
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
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"order" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"order" : 1,
					"source" : [ "obj-14", 0 ]
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
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-3", 0 ]
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
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"originid" : "pat-76",
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
