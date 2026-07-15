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
		"rect" : [ 112.0, 134.0, 1000.0, 780.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 401.0, 674.0, 68.0, 22.0 ],
					"text" : "dac~ 15 16"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 15.0, 171.0, 48.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 1.5 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "curve",
							"parameter_mmax" : 4.0,
							"parameter_mmin" : 0.25,
							"parameter_modmode" : 0,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "curve",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "curve"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 105.0, 171.0, 48.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 8 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "events",
							"parameter_mmax" : 32.0,
							"parameter_modmode" : 0,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "events",
							"parameter_type" : 1,
							"parameter_unitstyle" : 0
						}

					}
,
					"varname" : "events"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 195.0, 171.0, 48.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "offset",
							"parameter_mmax" : 31.0,
							"parameter_modmode" : 0,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "offset",
							"parameter_type" : 1,
							"parameter_unitstyle" : 0
						}

					}
,
					"varname" : "offset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 389.0, 46.0, 48.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 16 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "phraseEvents",
							"parameter_mmax" : 32.0,
							"parameter_mmin" : 2.0,
							"parameter_modmode" : 0,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "phrEvts",
							"parameter_type" : 1,
							"parameter_unitstyle" : 0
						}

					}
,
					"varname" : "phraseEvents"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 445.0, 46.0, 48.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.125 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "baseEventDur",
							"parameter_mmax" : 0.5,
							"parameter_mmin" : 0.02,
							"parameter_modmode" : 0,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "evtDur",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "baseEventDur"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 585.0, 171.0, 48.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 1.5 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "curve2",
							"parameter_mmax" : 4.0,
							"parameter_mmin" : 0.25,
							"parameter_modmode" : 0,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "curve2",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "curve2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 675.0, 171.0, 48.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 8 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "events2",
							"parameter_mmax" : 32.0,
							"parameter_modmode" : 0,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "events2",
							"parameter_type" : 1,
							"parameter_unitstyle" : 0
						}

					}
,
					"varname" : "events2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 765.0, 171.0, 48.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "offset2",
							"parameter_mmax" : 31.0,
							"parameter_modmode" : 0,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "offset2",
							"parameter_type" : 1,
							"parameter_unitstyle" : 0
						}

					}
,
					"varname" : "offset2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 271.0, 88.0, 22.0 ],
					"text" : "prepend curve"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 105.0, 301.0, 93.0, 22.0 ],
					"text" : "prepend events"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 195.0, 331.0, 88.0, 22.0 ],
					"text" : "prepend offset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 285.0, 361.0, 129.0, 22.0 ],
					"text" : "prepend phraseEvents"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 585.0, 271.0, 95.0, 22.0 ],
					"text" : "prepend curve2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 675.0, 301.0, 100.0, 22.0 ],
					"text" : "prepend events2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 765.0, 331.0, 95.0, 22.0 ],
					"text" : "prepend offset2"
				}

			}
, 			{
				"box" : 				{
					"filename" : "curvetime.js",
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 15.0, 411.0, 94.0, 22.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"text" : "v8 curvetime.js",
					"textfile" : 					{
						"filename" : "curvetime.js",
						"flags" : 0,
						"embed" : 0,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 445.0, 271.0, 80.0, 22.0 ],
					"text" : "pak 0.125 16"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 445.0, 311.0, 118.0, 22.0 ],
					"text" : "expr 1. / ($f1 * $i2)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 445.0, 351.0, 55.0, 22.0 ],
					"text" : "phasor~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 285.0, 461.0, 46.0, 22.0 ],
					"text" : "what~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 285.0, 511.0, 44.0, 22.0 ],
					"text" : "edge~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 285.0, 551.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 385.0, 511.0, 45.0, 22.0 ],
					"text" : "*~ 0.4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 585.0, 461.0, 46.0, 22.0 ],
					"text" : "what~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 585.0, 511.0, 44.0, 22.0 ],
					"text" : "edge~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 585.0, 551.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 685.0, 511.0, 45.0, 22.0 ],
					"text" : "*~ 0.4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 21.0, 141.0, 330.0, 20.0 ],
					"text" : "lane 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 389.0, 21.0, 268.0, 20.0 ],
					"text" : "tempo: freq = 1 / (baseEventDur * phraseEvents)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 590.0, 141.0, 314.0, 20.0 ],
					"text" : "lane 2"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
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
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-14", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"order" : 1,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"order" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"order" : 1,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"order" : 0,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"order" : 1,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 1 ],
					"order" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"order" : 1,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"order" : 0,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"source" : [ "obj-59", 0 ]
				}

			}
 ],
		"originid" : "pat-155",
		"parameters" : 		{
			"obj-1" : [ "curve", "curve", 0 ],
			"obj-2" : [ "events", "events", 0 ],
			"obj-3" : [ "offset", "offset", 0 ],
			"obj-4" : [ "phraseEvents", "phrEvts", 0 ],
			"obj-5" : [ "baseEventDur", "evtDur", 0 ],
			"obj-50" : [ "curve2", "curve2", 0 ],
			"obj-51" : [ "events2", "events2", 0 ],
			"obj-52" : [ "offset2", "offset2", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "curvetime.js",
				"bootpath" : "~/code/max_patches",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
