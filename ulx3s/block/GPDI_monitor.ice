{
  "version": "1.2",
  "package": {
    "name": "GPDI",
    "version": "0.1",
    "description": "GPDI output",
    "author": "Goran Mahovlic",
    "image": ""
  },
  "design": {
    "board": "ulx3s-12f",
    "graph": {
      "blocks": [
        {
          "id": "663f6df9-046f-4524-b09d-284617f9cddf",
          "type": "basic.input",
          "data": {
            "name": "clk",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": false,
            "clock": true
          },
          "position": {
            "x": 760,
            "y": 784
          }
        },
        {
          "id": "1c18c134-a47a-452f-92e2-b5c714bd6327",
          "type": "basic.input",
          "data": {
            "name": "color",
            "range": "[23:0]",
            "clock": false,
            "size": 24
          },
          "position": {
            "x": 872,
            "y": 912
          }
        },
        {
          "id": "33c95bb3-1bca-4725-9681-21e84ff44e67",
          "type": "basic.output",
          "data": {
            "name": "gpdi_p",
            "range": "[3:0]",
            "size": 4
          },
          "position": {
            "x": 1624,
            "y": 1040
          }
        },
        {
          "id": "bbc3f25d-1f33-4fde-8d98-7f857c26444e",
          "type": "basic.output",
          "data": {
            "name": "gpdi_n",
            "range": "[3:0]",
            "size": 4
          },
          "position": {
            "x": 1624,
            "y": 1088
          }
        },
        {
          "id": "25412314-657a-42ee-aeed-6a3cb925e1be",
          "type": "basic.output",
          "data": {
            "name": "h_pos",
            "range": "[9:0]",
            "size": 10
          },
          "position": {
            "x": 1432,
            "y": 1128
          }
        },
        {
          "id": "e4e1dc88-e00a-4edb-a5bd-69e44ec2bafe",
          "type": "basic.output",
          "data": {
            "name": "v_pos",
            "range": "[9:0]",
            "size": 10
          },
          "position": {
            "x": 1432,
            "y": 1176
          }
        },
        {
          "id": "9efbffc1-d242-4e1c-b0b4-98a5c520900a",
          "type": "b67c0a17bb1c90bc0453695614861f1ff718ad90",
          "position": {
            "x": 1144,
            "y": 968
          },
          "size": {
            "width": 96,
            "height": 160
          }
        },
        {
          "id": "e4e76c60-091b-4748-9cc0-61a3b078a49e",
          "type": "d6fc84fe8db099d81a0b7535d98adf8b1ed0fe22",
          "position": {
            "x": 1432,
            "y": 840
          },
          "size": {
            "width": 96,
            "height": 288
          }
        },
        {
          "id": "d4853dcc-c003-47cd-875c-72bfe0c307f1",
          "type": "fcce4a9f0b39c1325fbfdc8eba8d91595af10041",
          "position": {
            "x": 888,
            "y": 752
          },
          "size": {
            "width": 96,
            "height": 128
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "e4e76c60-091b-4748-9cc0-61a3b078a49e",
            "port": "1d6b6bf5-4b3b-4a04-80b7-df6fc5259da0"
          },
          "target": {
            "block": "33c95bb3-1bca-4725-9681-21e84ff44e67",
            "port": "in"
          },
          "vertices": [],
          "size": 4
        },
        {
          "source": {
            "block": "e4e76c60-091b-4748-9cc0-61a3b078a49e",
            "port": "0821c3f9-0d8b-4ad9-93e8-fa66084f7d5d"
          },
          "target": {
            "block": "bbc3f25d-1f33-4fde-8d98-7f857c26444e",
            "port": "in"
          },
          "vertices": [],
          "size": 4
        },
        {
          "source": {
            "block": "9efbffc1-d242-4e1c-b0b4-98a5c520900a",
            "port": "fa3567a3-a71e-463e-9184-153c8fec9864"
          },
          "target": {
            "block": "e4e76c60-091b-4748-9cc0-61a3b078a49e",
            "port": "bdad9e73-376f-4db0-8211-e7f6c3550d69"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "9efbffc1-d242-4e1c-b0b4-98a5c520900a",
            "port": "83ceb273-61a6-4c78-82b5-4d2f8abe37e1"
          },
          "target": {
            "block": "e4e76c60-091b-4748-9cc0-61a3b078a49e",
            "port": "c542690e-42ed-4f71-808b-f55f006a1cfc"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "9efbffc1-d242-4e1c-b0b4-98a5c520900a",
            "port": "71d81973-35ed-4b5f-b531-1a0649b987a0"
          },
          "target": {
            "block": "e4e76c60-091b-4748-9cc0-61a3b078a49e",
            "port": "376def3c-ca51-42c4-91ab-c4396491098f"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "d4853dcc-c003-47cd-875c-72bfe0c307f1",
            "port": "fa3567a3-a71e-463e-9184-153c8fec9864"
          },
          "target": {
            "block": "9efbffc1-d242-4e1c-b0b4-98a5c520900a",
            "port": "f66f77e6-ad74-4cec-9aa4-402b22c70cd1"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "d4853dcc-c003-47cd-875c-72bfe0c307f1",
            "port": "ce413c5f-e187-4460-aca5-5a0cc713da6b"
          },
          "target": {
            "block": "9efbffc1-d242-4e1c-b0b4-98a5c520900a",
            "port": "6f6f8dd4-433a-40f6-88eb-7233c801ba77"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "d4853dcc-c003-47cd-875c-72bfe0c307f1",
            "port": "fa3567a3-a71e-463e-9184-153c8fec9864"
          },
          "target": {
            "block": "e4e76c60-091b-4748-9cc0-61a3b078a49e",
            "port": "f66f77e6-ad74-4cec-9aa4-402b22c70cd1"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "d4853dcc-c003-47cd-875c-72bfe0c307f1",
            "port": "ce413c5f-e187-4460-aca5-5a0cc713da6b"
          },
          "target": {
            "block": "e4e76c60-091b-4748-9cc0-61a3b078a49e",
            "port": "6f6f8dd4-433a-40f6-88eb-7233c801ba77"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "d4853dcc-c003-47cd-875c-72bfe0c307f1",
            "port": "5f0dddcc-5fb4-43c0-b5ce-4b93ea61c16b"
          },
          "target": {
            "block": "e4e76c60-091b-4748-9cc0-61a3b078a49e",
            "port": "8ea50362-f6af-49b7-8a77-26516b015dce"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "1c18c134-a47a-452f-92e2-b5c714bd6327",
            "port": "out"
          },
          "target": {
            "block": "e4e76c60-091b-4748-9cc0-61a3b078a49e",
            "port": "92449573-2b82-44b9-bbbf-8808b40ad40f"
          },
          "size": 24
        },
        {
          "source": {
            "block": "9efbffc1-d242-4e1c-b0b4-98a5c520900a",
            "port": "95d58c6c-0c3a-4a47-b056-c7ae91204bf1"
          },
          "target": {
            "block": "25412314-657a-42ee-aeed-6a3cb925e1be",
            "port": "in"
          },
          "vertices": [
            {
              "x": 1320,
              "y": 1120
            }
          ],
          "size": 10
        },
        {
          "source": {
            "block": "9efbffc1-d242-4e1c-b0b4-98a5c520900a",
            "port": "691d6bb0-0266-4b4f-be80-cc211624b224"
          },
          "target": {
            "block": "e4e1dc88-e00a-4edb-a5bd-69e44ec2bafe",
            "port": "in"
          },
          "vertices": [
            {
              "x": 1288,
              "y": 1160
            }
          ],
          "size": 10
        },
        {
          "source": {
            "block": "663f6df9-046f-4524-b09d-284617f9cddf",
            "port": "out"
          },
          "target": {
            "block": "d4853dcc-c003-47cd-875c-72bfe0c307f1",
            "port": "f66f77e6-ad74-4cec-9aa4-402b22c70cd1"
          }
        }
      ]
    }
  },
  "dependencies": {
    "b67c0a17bb1c90bc0453695614861f1ff718ad90": {
      "package": {
        "name": "VGA",
        "version": "0.1",
        "description": "vga video needed for VGA/GPDI output",
        "author": "Goran Mahovlic",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "fa3567a3-a71e-463e-9184-153c8fec9864",
              "type": "basic.output",
              "data": {
                "name": "vga_blank"
              },
              "position": {
                "x": 1768,
                "y": 336
              }
            },
            {
              "id": "f66f77e6-ad74-4cec-9aa4-402b22c70cd1",
              "type": "basic.input",
              "data": {
                "name": "clk",
                "clock": false
              },
              "position": {
                "x": 608,
                "y": 456
              }
            },
            {
              "id": "71d81973-35ed-4b5f-b531-1a0649b987a0",
              "type": "basic.output",
              "data": {
                "name": "vga_hsync"
              },
              "position": {
                "x": 1768,
                "y": 496
              }
            },
            {
              "id": "83ceb273-61a6-4c78-82b5-4d2f8abe37e1",
              "type": "basic.output",
              "data": {
                "name": "vga_vsync"
              },
              "position": {
                "x": 1768,
                "y": 656
              }
            },
            {
              "id": "95d58c6c-0c3a-4a47-b056-c7ae91204bf1",
              "type": "basic.output",
              "data": {
                "name": "h_pos",
                "range": "[9:0]",
                "size": 10
              },
              "position": {
                "x": 1776,
                "y": 808
              }
            },
            {
              "id": "6f6f8dd4-433a-40f6-88eb-7233c801ba77",
              "type": "basic.input",
              "data": {
                "name": "resetn",
                "clock": false
              },
              "position": {
                "x": 608,
                "y": 848
              }
            },
            {
              "id": "691d6bb0-0266-4b4f-be80-cc211624b224",
              "type": "basic.output",
              "data": {
                "name": "v_pos",
                "range": "[9:0]",
                "size": 10
              },
              "position": {
                "x": 1776,
                "y": 968
              }
            },
            {
              "id": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
              "type": "basic.code",
              "data": {
                "code": "reg vga_hsync;\nreg vga_vsync;\nreg vga_blank;\nreg [9:0] h_pos;\nreg [9:0] v_pos;\n\nparameter h_visible = 10'd640;\nparameter h_front = 10'd16;\nparameter h_sync = 10'd96;\nparameter h_back = 10'd44;\nparameter h_total = h_visible + h_front + h_sync + h_back;\n\nparameter v_visible = 10'd480;\nparameter v_front = 10'd10;\nparameter v_sync = 10'd2;\nparameter v_back = 10'd31;\nparameter v_total = v_visible + v_front + v_sync + v_back;\n\nwire h_active, v_active, visible;\n\nalways @(posedge clk) \nbegin\n  if (resetn == 0) begin\n    h_pos <= 10'b0;\n    v_pos <= 10'b0;\n\n  end else begin\n    //Pixel counters\n    if (h_pos == h_total - 1) begin\n      h_pos <= 0;\n      if (v_pos == v_total - 1) begin\n        v_pos <= 0;\n      end else begin\n        v_pos <= v_pos + 1;\n      end\n    end else begin\n      h_pos <= h_pos + 1;\n    end\n    vga_blank <= !visible;\n    vga_hsync <= !((h_pos >= (h_visible + h_front)) && (h_pos < (h_visible + h_front + h_sync)));\n    vga_vsync <= !((v_pos >= (v_visible + v_front)) && (v_pos < (v_visible + v_front + v_sync)));\n  end\nend\n\nassign h_active = (h_pos < h_visible);\nassign v_active = (v_pos < v_visible);\nassign visible = h_active && v_active;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "resetn"
                    }
                  ],
                  "out": [
                    {
                      "name": "vga_blank"
                    },
                    {
                      "name": "vga_hsync"
                    },
                    {
                      "name": "vga_vsync"
                    },
                    {
                      "name": "h_pos",
                      "range": "[9:0]",
                      "size": 10
                    },
                    {
                      "name": "v_pos",
                      "range": "[9:0]",
                      "size": 10
                    }
                  ]
                }
              },
              "position": {
                "x": 776,
                "y": 288
              },
              "size": {
                "width": 920,
                "height": 792
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "f66f77e6-ad74-4cec-9aa4-402b22c70cd1",
                "port": "out"
              },
              "target": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "6f6f8dd4-433a-40f6-88eb-7233c801ba77",
                "port": "out"
              },
              "target": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "resetn"
              }
            },
            {
              "source": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "vga_hsync"
              },
              "target": {
                "block": "71d81973-35ed-4b5f-b531-1a0649b987a0",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "vga_vsync"
              },
              "target": {
                "block": "83ceb273-61a6-4c78-82b5-4d2f8abe37e1",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "vga_blank"
              },
              "target": {
                "block": "fa3567a3-a71e-463e-9184-153c8fec9864",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "h_pos"
              },
              "target": {
                "block": "95d58c6c-0c3a-4a47-b056-c7ae91204bf1",
                "port": "in"
              },
              "size": 10
            },
            {
              "source": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "v_pos"
              },
              "target": {
                "block": "691d6bb0-0266-4b4f-be80-cc211624b224",
                "port": "in"
              },
              "size": 10
            }
          ]
        }
      }
    },
    "d6fc84fe8db099d81a0b7535d98adf8b1ed0fe22": {
      "package": {
        "name": "VGA2DVID",
        "version": "0.1",
        "description": "vga2dvid needed for VGA/GPDI output",
        "author": "Goran Mahovlic",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "9ce1fdf0-3038-44a5-aac4-8f86a00371b5",
              "type": "basic.output",
              "data": {
                "name": "outp_red",
                "range": "[9:0]",
                "size": 10
              },
              "position": {
                "x": 1848,
                "y": 280
              }
            },
            {
              "id": "f66f77e6-ad74-4cec-9aa4-402b22c70cd1",
              "type": "basic.input",
              "data": {
                "name": "clk",
                "clock": false
              },
              "position": {
                "x": 608,
                "y": 312
              }
            },
            {
              "id": "e7ae3a25-db68-4e4c-addf-c0c01b48a394",
              "type": "basic.output",
              "data": {
                "name": "outp_green",
                "range": "[9:0]",
                "size": 10
              },
              "position": {
                "x": 1848,
                "y": 320
              }
            },
            {
              "id": "7fe5aad2-8740-40ea-8e56-17dcbc28ddd7",
              "type": "basic.output",
              "data": {
                "name": "outp_blue",
                "range": "[9:0]",
                "size": 10
              },
              "position": {
                "x": 1848,
                "y": 368
              }
            },
            {
              "id": "c82dbfa1-4af4-425a-8da0-45537d00b477",
              "type": "basic.output",
              "data": {
                "name": "out_clock",
                "range": "[1:0]",
                "size": 2
              },
              "position": {
                "x": 1848,
                "y": 408
              }
            },
            {
              "id": "8ea50362-f6af-49b7-8a77-26516b015dce",
              "type": "basic.input",
              "data": {
                "name": "clk_shift",
                "clock": false
              },
              "position": {
                "x": 616,
                "y": 416
              }
            },
            {
              "id": "76d27dbd-09fc-443c-be40-576b0e575e78",
              "type": "basic.output",
              "data": {
                "name": "out_red",
                "range": "[1:0]",
                "size": 2
              },
              "position": {
                "x": 1848,
                "y": 456
              }
            },
            {
              "id": "b8baa3f6-59d1-46cc-be83-6d20bf30c533",
              "type": "basic.output",
              "data": {
                "name": "out_green",
                "range": "[1:0]",
                "size": 2
              },
              "position": {
                "x": 1848,
                "y": 496
              }
            },
            {
              "id": "92449573-2b82-44b9-bbbf-8808b40ad40f",
              "type": "basic.input",
              "data": {
                "name": "in_color",
                "range": "[23:0]",
                "clock": false,
                "size": 24
              },
              "position": {
                "x": 592,
                "y": 520
              }
            },
            {
              "id": "560f4ee3-cd63-4bc0-8a1f-caeb60801c3e",
              "type": "basic.output",
              "data": {
                "name": "out_blue",
                "range": "[1:0]",
                "size": 2
              },
              "position": {
                "x": 1848,
                "y": 536
              }
            },
            {
              "id": "bdad9e73-376f-4db0-8211-e7f6c3550d69",
              "type": "basic.input",
              "data": {
                "name": "in_blank",
                "clock": false
              },
              "position": {
                "x": 608,
                "y": 624
              }
            },
            {
              "id": "376def3c-ca51-42c4-91ab-c4396491098f",
              "type": "basic.input",
              "data": {
                "name": "in_hsync",
                "clock": false
              },
              "position": {
                "x": 608,
                "y": 728
              }
            },
            {
              "id": "c542690e-42ed-4f71-808b-f55f006a1cfc",
              "type": "basic.input",
              "data": {
                "name": "in_vsync",
                "clock": false
              },
              "position": {
                "x": 608,
                "y": 832
              }
            },
            {
              "id": "6f6f8dd4-433a-40f6-88eb-7233c801ba77",
              "type": "basic.input",
              "data": {
                "name": "resetn",
                "clock": false
              },
              "position": {
                "x": 608,
                "y": 936
              }
            },
            {
              "id": "1d6b6bf5-4b3b-4a04-80b7-df6fc5259da0",
              "type": "basic.output",
              "data": {
                "name": "tmds_p",
                "range": "[3:0]",
                "pins": [
                  {
                    "index": "3",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "2",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "1",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "0",
                    "name": "",
                    "value": ""
                  }
                ],
                "virtual": false
              },
              "position": {
                "x": 1832,
                "y": 1240
              }
            },
            {
              "id": "0821c3f9-0d8b-4ad9-93e8-fa66084f7d5d",
              "type": "basic.output",
              "data": {
                "name": "tmds_n",
                "range": "[3:0]",
                "pins": [
                  {
                    "index": "3",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "2",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "1",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "0",
                    "name": "",
                    "value": ""
                  }
                ],
                "virtual": false
              },
              "position": {
                "x": 1832,
                "y": 1280
              }
            },
            {
              "id": "cc6c49a3-d462-4cbb-a5de-69015a00d292",
              "type": "2715b1b7c75763e274a4735fc4a9a48c1432773b",
              "position": {
                "x": 2160,
                "y": 608
              },
              "size": {
                "width": 96,
                "height": 160
              }
            },
            {
              "id": "dfc7ef03-b812-43de-be70-67af5cb06117",
              "type": "2715b1b7c75763e274a4735fc4a9a48c1432773b",
              "position": {
                "x": 2160,
                "y": 832
              },
              "size": {
                "width": 96,
                "height": 160
              }
            },
            {
              "id": "ef883536-abc9-4971-9b2c-1c2c08bd13b0",
              "type": "2715b1b7c75763e274a4735fc4a9a48c1432773b",
              "position": {
                "x": 2176,
                "y": 1048
              },
              "size": {
                "width": 96,
                "height": 160
              }
            },
            {
              "id": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
              "type": "basic.code",
              "data": {
                "code": "//------------------------------------------------------------------------------\n// Engineer:\t\tMike Field <hamster@snap.net.nz>\n// Description:\tConverts VGA signals into DVID bitstreams.\n//\n//\t'clk_shift' 10x clk_pixel for SDR\n//      'clk_shift'  5x clk_pixel for DDR\n//\n//\t'blank' should be asserted during the non-display \n//\tportions of the frame\n//------------------------------------------------------------------------------\n// See: http://hamsterworks.co.nz/mediawiki/index.php/Dvid_test\n//\t\thttp://hamsterworks.co.nz/mediawiki/index.php/FPGA_Projects\n//\n// Copyright (c) 2012 Mike Field <hamster@snap.net.nz>\n//\n// Permission is hereby granted, free of charge, to any person obtaining a copy\n// of this software and associated documentation files (the \"Software\"), to deal\n// in the Software without restriction, including without limitation the rights\n// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell\n// copies of the Software, and to permit persons to whom the Software is\n// furnished to do so, subject to the following conditions:\n//\n// The above copyright notice and this permission notice shall be included in\n// all copies or substantial portions of the Software.\n//\n// THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR\n// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,\n// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE\n// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER\n// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,\n// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN\n// THE SOFTWARE.\n//\n// takes VGA input and prepares output\n// for SDR buffer, which send 1 bit per 1 clock period output out_red(0), out_green(0), ... etc.\n// for DDR buffers, which send 2 bits per 1 clock period output out_red(1 downto 0), ...\n// EMARD unified SDR and DDR into one module\n// no timescale needed\n\nparameter C_shift_clock_synchronizer=1'b1;\n// VGA pixel clock, 25 MHz for 640x480\n// SDR: 10x clk_pixel, DDR: 5x clk_pixel, in phase with clk_pixel\n\n\nwire [9:0] encoded_red; wire [9:0] encoded_green; wire [9:0] encoded_blue;\nreg [9:0] latched_red; reg [9:0] latched_green; reg [9:0] latched_blue;\nreg [9:0] shift_red; reg [9:0] shift_green; reg [9:0] shift_blue;\nparameter C_shift_clock_initial = 10'b0000011111;\nreg [9:0] shift_clock;\nreg R_shift_clock_off_sync;\nreg [7:0] R_shift_clock_synchronizer;\nreg [6:0] R_sync_fail;  // counts sync fails, after too many, reinitialize shift_clock\n//parameter c_red = 1'b0;\n//parameter c_green = 1'b0;\nwire [1:0] c_red = 2'b00;\nwire [1:0] c_green = 2'b00;\nwire [1:0] c_blue;\nwire [7:0] red_d;\nwire [7:0] green_d;\nwire [7:0] blue_d;\n\nwire blank_red, blank_green, blank_blue;\nwire resetn_red, resetn_green, resetn_blue;\nwire red_pixel_clk, green_pixel_clk, blue_pixel_clk;\n\nassign red_pixel_clk = clk_pixel;\nassign green_pixel_clk = clk_pixel;\nassign blue_pixel_clk = clk_pixel;\n\nassign blank_red = in_blank;\nassign blank_green = in_blank;\nassign blank_blue = in_blank;\n\nassign resetn_red = resetn;\nassign resetn_green = resetn;\nassign resetn_blue = resetn;\n\nassign c_blue = {in_vsync,in_hsync};\nassign red_d[7:0] = in_color[23:16];\nassign green_d[7:0] = in_color[15:8];\nassign blue_d[7:0] = in_color[7:0];\n\nwire [1:0] tmds[3:0];\nassign tmds[3] = out_clock;\nassign tmds[2] = out_red;\nassign tmds[1] = out_green;\nassign tmds[0] = out_blue;\n\n// register stage to improve timing of the fake differential\nreg [1:0] R_tmds_p[3:0], R_tmds_n[3:0];\ngenerate\n  genvar i;\n  for(i = 0; i < 4; i++)\n  begin : TMDS_pn_registers\n    always @(posedge clk_shift) R_tmds_p[i] <=  tmds[i];\n    always @(posedge clk_shift) R_tmds_n[i] <= ~tmds[i];\n  end\nendgenerate\n\n// output SDR/DDR to fake differential\ngenerate\n  genvar i;\n    for(i = 0; i < 4; i++)\n    begin : DDR_output_mode\n      ODDRX1F\n      ddr_p_instance\n      (\n        .D0(R_tmds_p[i][0]),\n        .D1(R_tmds_p[i][1]),\n        .Q(out_p[i]),\n        .SCLK(clk_shift),\n        .RST(0)\n      );\n      ODDRX1F\n      ddr_n_instance\n      (\n        .D0(R_tmds_n[i][0]),\n        .D1(R_tmds_n[i][1]),\n        .Q(out_n[i]),\n        .SCLK(clk_shift),\n        .RST(0)\n      );\n    end\nendgenerate\n\n// sampler verifies is shift_clock state synchronous with pixel_clock\nalways @(posedge clk_pixel) begin\nif (!resetn)\n  R_shift_clock_off_sync <= 1'b0;\n// does 0 to 1 transition at bits 5 downto 4 happen at rising_edge of clk_pixel?\n// if shift_clock = C_shift_clock_initial then\nif(shift_clock[5:4] == C_shift_clock_initial[5:4]) begin\n  // same as above line but simplified \n  R_shift_clock_off_sync <= 1'b0;\nend\nelse begin\n  R_shift_clock_off_sync <= 1'b1;\nend\nend\n\n// every N cycles of clk_shift: signal to skip 1 cycle in order to get in sync\nalways @(posedge clk_shift) begin\nif (!resetn)\n   R_shift_clock_synchronizer <=  1'b0;\nif(R_shift_clock_off_sync == 1'b1) begin\n  if(R_shift_clock_synchronizer[(7)] == 1'b1) begin\n    R_shift_clock_synchronizer <= {8{1'b0}};\n  end\n  else begin\n    R_shift_clock_synchronizer <= R_shift_clock_synchronizer + 1;\n  end\nend\nelse begin\n  R_shift_clock_synchronizer <= {8{1'b0}};\nend\nend\n\n// shift_clock_synchronizer\n/*  Added as blocks\ntmds_encoder u21(\n  .clk(clk_pixel),\n.data(red_d),\n.c(c_red),\n.blank(in_blank),\n.resetn(resetn),\n.encoded(encoded_red));\n\ntmds_encoder u22(\n  .clk(clk_pixel),\n.data(green_d),\n.c(c_green),\n.blank(in_blank),\n.resetn(resetn),\n.encoded(encoded_green));\n\ntmds_encoder u23(\n  .clk(clk_pixel),\n.data(blue_d),\n.c(c_blue),\n.blank(in_blank),\n.resetn(resetn),\n.encoded(encoded_blue));\n*/\n\nalways @(posedge clk_pixel) begin\nif (!resetn)\nbegin\n  latched_red <= 1'b0;\n  latched_green <= 1'b0;\n  latched_blue <= 1'b0;\nend\nelse\nbegin\n  latched_red <= encoded_red;\n  latched_green <= encoded_green;\n  latched_blue <= encoded_blue;\nend\nend\n\nassign outp_red = latched_red;\nassign outp_green = latched_green;\nassign outp_blue = latched_blue;\n\nalways @(posedge clk_shift) begin\nif (!resetn)\nbegin\n  shift_red <= 1'b0;\n  shift_green <= 1'b0;\n  shift_blue <= 1'b0;\n  shift_clock <= C_shift_clock_initial;\nend\n//if shift_clock = \"0000011111\" then\nif(shift_clock[5:4] == C_shift_clock_initial[5:4]) begin\n  // same as above line but simplified\n  shift_red <= latched_red;\n  shift_green <= latched_green;\n  shift_blue <= latched_blue;\nend\nelse begin\n  shift_red <= {2'b00,shift_red[9:2]};\n  shift_green <= {2'b00,shift_green[9:2]};\n  shift_blue <= {2'b00,shift_blue[9:2]};\nend\nif(R_shift_clock_synchronizer[(7)] == 1'b0) begin\n  shift_clock <= {shift_clock[1:0],shift_clock[9:2]};\nend\nelse begin\n  // synchronization failed.\n  // after too many fails, reinitialize shift_clock\n  if(R_sync_fail[(6)] == 1'b1) begin\n    shift_clock <= C_shift_clock_initial;\n    R_sync_fail <= {7{1'b0}};\n  end\n  else begin\n    R_sync_fail <= R_sync_fail + 1;\n  end\nend\nend\n\n\nassign out_red = shift_red[1:0];\nassign out_green = shift_green[1:0];\nassign out_blue = shift_blue[1:0];\nassign out_clock = shift_clock[1:0];",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk_pixel"
                    },
                    {
                      "name": "clk_shift"
                    },
                    {
                      "name": "in_color",
                      "range": "[23:0]",
                      "size": 24
                    },
                    {
                      "name": "in_blank"
                    },
                    {
                      "name": "in_hsync"
                    },
                    {
                      "name": "in_vsync"
                    },
                    {
                      "name": "resetn"
                    },
                    {
                      "name": "encoded_red",
                      "range": "[9:0]",
                      "size": 10
                    },
                    {
                      "name": "encoded_green",
                      "range": "[9:0]",
                      "size": 10
                    },
                    {
                      "name": "encoded_blue",
                      "range": "[9:0]",
                      "size": 10
                    }
                  ],
                  "out": [
                    {
                      "name": "outp_red",
                      "range": "[9:0]",
                      "size": 10
                    },
                    {
                      "name": "outp_green",
                      "range": "[9:0]",
                      "size": 10
                    },
                    {
                      "name": "outp_blue",
                      "range": "[9:0]",
                      "size": 10
                    },
                    {
                      "name": "out_clock",
                      "range": "[1:0]",
                      "size": 2
                    },
                    {
                      "name": "out_red",
                      "range": "[1:0]",
                      "size": 2
                    },
                    {
                      "name": "out_green",
                      "range": "[1:0]",
                      "size": 2
                    },
                    {
                      "name": "out_blue",
                      "range": "[1:0]",
                      "size": 2
                    },
                    {
                      "name": "red_pixel_clk"
                    },
                    {
                      "name": "red_d",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "c_red",
                      "range": "[1:0]",
                      "size": 2
                    },
                    {
                      "name": "blank_red"
                    },
                    {
                      "name": "resetn_red"
                    },
                    {
                      "name": "green_pixel_clk"
                    },
                    {
                      "name": "green_d",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "c_green",
                      "range": "[1:0]",
                      "size": 2
                    },
                    {
                      "name": "blank_green"
                    },
                    {
                      "name": "resetn_green"
                    },
                    {
                      "name": "blue_pixel_clk"
                    },
                    {
                      "name": "blue_d",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "c_blue",
                      "range": "[1:0]",
                      "size": 2
                    },
                    {
                      "name": "blank_blue"
                    },
                    {
                      "name": "resetn_blue"
                    },
                    {
                      "name": "out_p",
                      "range": "[3:0]",
                      "size": 4
                    },
                    {
                      "name": "out_n",
                      "range": "[3:0]",
                      "size": 4
                    }
                  ]
                }
              },
              "position": {
                "x": 776,
                "y": 288
              },
              "size": {
                "width": 944,
                "height": 1048
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "6f6f8dd4-433a-40f6-88eb-7233c801ba77",
                "port": "out"
              },
              "target": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "resetn"
              }
            },
            {
              "source": {
                "block": "f66f77e6-ad74-4cec-9aa4-402b22c70cd1",
                "port": "out"
              },
              "target": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "clk_pixel"
              }
            },
            {
              "source": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "out_blue"
              },
              "target": {
                "block": "560f4ee3-cd63-4bc0-8a1f-caeb60801c3e",
                "port": "in"
              },
              "size": 2
            },
            {
              "source": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "out_clock"
              },
              "target": {
                "block": "c82dbfa1-4af4-425a-8da0-45537d00b477",
                "port": "in"
              },
              "size": 2
            },
            {
              "source": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "out_green"
              },
              "target": {
                "block": "b8baa3f6-59d1-46cc-be83-6d20bf30c533",
                "port": "in"
              },
              "size": 2
            },
            {
              "source": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "out_red"
              },
              "target": {
                "block": "76d27dbd-09fc-443c-be40-576b0e575e78",
                "port": "in"
              },
              "size": 2
            },
            {
              "source": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "outp_green"
              },
              "target": {
                "block": "e7ae3a25-db68-4e4c-addf-c0c01b48a394",
                "port": "in"
              },
              "size": 10
            },
            {
              "source": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "outp_red"
              },
              "target": {
                "block": "9ce1fdf0-3038-44a5-aac4-8f86a00371b5",
                "port": "in"
              },
              "size": 10
            },
            {
              "source": {
                "block": "8ea50362-f6af-49b7-8a77-26516b015dce",
                "port": "out"
              },
              "target": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "clk_shift"
              }
            },
            {
              "source": {
                "block": "92449573-2b82-44b9-bbbf-8808b40ad40f",
                "port": "out"
              },
              "target": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "in_color"
              },
              "size": 24
            },
            {
              "source": {
                "block": "376def3c-ca51-42c4-91ab-c4396491098f",
                "port": "out"
              },
              "target": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "in_hsync"
              }
            },
            {
              "source": {
                "block": "c542690e-42ed-4f71-808b-f55f006a1cfc",
                "port": "out"
              },
              "target": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "in_vsync"
              }
            },
            {
              "source": {
                "block": "cc6c49a3-d462-4cbb-a5de-69015a00d292",
                "port": "0d84a7c9-e0f1-4666-ab60-ace36137418a"
              },
              "target": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "encoded_red"
              },
              "vertices": [
                {
                  "x": 2656,
                  "y": 1592
                },
                {
                  "x": 512,
                  "y": 1424
                },
                {
                  "x": 512,
                  "y": 1344
                }
              ],
              "size": 10
            },
            {
              "source": {
                "block": "dfc7ef03-b812-43de-be70-67af5cb06117",
                "port": "0d84a7c9-e0f1-4666-ab60-ace36137418a"
              },
              "target": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "encoded_green"
              },
              "vertices": [
                {
                  "x": 2608,
                  "y": 1544
                },
                {
                  "x": 576,
                  "y": 1456
                }
              ],
              "size": 10
            },
            {
              "source": {
                "block": "ef883536-abc9-4971-9b2c-1c2c08bd13b0",
                "port": "0d84a7c9-e0f1-4666-ab60-ace36137418a"
              },
              "target": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "encoded_blue"
              },
              "vertices": [
                {
                  "x": 624,
                  "y": 1416
                }
              ],
              "size": 10
            },
            {
              "source": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "outp_blue"
              },
              "target": {
                "block": "7fe5aad2-8740-40ea-8e56-17dcbc28ddd7",
                "port": "in"
              },
              "size": 10
            },
            {
              "source": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "red_d"
              },
              "target": {
                "block": "cc6c49a3-d462-4cbb-a5de-69015a00d292",
                "port": "79cf4052-ba99-4d71-94e6-64337e5e31b0"
              },
              "size": 8
            },
            {
              "source": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "red_pixel_clk"
              },
              "target": {
                "block": "cc6c49a3-d462-4cbb-a5de-69015a00d292",
                "port": "f66f77e6-ad74-4cec-9aa4-402b22c70cd1"
              }
            },
            {
              "source": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "c_red"
              },
              "target": {
                "block": "cc6c49a3-d462-4cbb-a5de-69015a00d292",
                "port": "c098265c-852e-4d05-bce2-dd5928b4cb26"
              },
              "size": 2
            },
            {
              "source": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "blank_red"
              },
              "target": {
                "block": "cc6c49a3-d462-4cbb-a5de-69015a00d292",
                "port": "376def3c-ca51-42c4-91ab-c4396491098f"
              }
            },
            {
              "source": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "resetn_red"
              },
              "target": {
                "block": "cc6c49a3-d462-4cbb-a5de-69015a00d292",
                "port": "6f6f8dd4-433a-40f6-88eb-7233c801ba77"
              }
            },
            {
              "source": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "green_pixel_clk"
              },
              "target": {
                "block": "dfc7ef03-b812-43de-be70-67af5cb06117",
                "port": "f66f77e6-ad74-4cec-9aa4-402b22c70cd1"
              }
            },
            {
              "source": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "green_d"
              },
              "target": {
                "block": "dfc7ef03-b812-43de-be70-67af5cb06117",
                "port": "79cf4052-ba99-4d71-94e6-64337e5e31b0"
              },
              "size": 8
            },
            {
              "source": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "blank_green"
              },
              "target": {
                "block": "dfc7ef03-b812-43de-be70-67af5cb06117",
                "port": "376def3c-ca51-42c4-91ab-c4396491098f"
              }
            },
            {
              "source": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "resetn_green"
              },
              "target": {
                "block": "dfc7ef03-b812-43de-be70-67af5cb06117",
                "port": "6f6f8dd4-433a-40f6-88eb-7233c801ba77"
              }
            },
            {
              "source": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "blue_pixel_clk"
              },
              "target": {
                "block": "ef883536-abc9-4971-9b2c-1c2c08bd13b0",
                "port": "f66f77e6-ad74-4cec-9aa4-402b22c70cd1"
              }
            },
            {
              "source": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "blue_d"
              },
              "target": {
                "block": "ef883536-abc9-4971-9b2c-1c2c08bd13b0",
                "port": "79cf4052-ba99-4d71-94e6-64337e5e31b0"
              },
              "size": 8
            },
            {
              "source": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "blank_blue"
              },
              "target": {
                "block": "ef883536-abc9-4971-9b2c-1c2c08bd13b0",
                "port": "376def3c-ca51-42c4-91ab-c4396491098f"
              },
              "vertices": [
                {
                  "x": 1992,
                  "y": 1176
                }
              ]
            },
            {
              "source": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "resetn_blue"
              },
              "target": {
                "block": "ef883536-abc9-4971-9b2c-1c2c08bd13b0",
                "port": "6f6f8dd4-433a-40f6-88eb-7233c801ba77"
              }
            },
            {
              "source": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "c_green"
              },
              "target": {
                "block": "dfc7ef03-b812-43de-be70-67af5cb06117",
                "port": "c098265c-852e-4d05-bce2-dd5928b4cb26"
              },
              "size": 2
            },
            {
              "source": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "c_blue"
              },
              "target": {
                "block": "ef883536-abc9-4971-9b2c-1c2c08bd13b0",
                "port": "c098265c-852e-4d05-bce2-dd5928b4cb26"
              },
              "size": 2
            },
            {
              "source": {
                "block": "bdad9e73-376f-4db0-8211-e7f6c3550d69",
                "port": "out"
              },
              "target": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "in_blank"
              }
            },
            {
              "source": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "out_p"
              },
              "target": {
                "block": "1d6b6bf5-4b3b-4a04-80b7-df6fc5259da0",
                "port": "in"
              },
              "size": 4
            },
            {
              "source": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "out_n"
              },
              "target": {
                "block": "0821c3f9-0d8b-4ad9-93e8-fa66084f7d5d",
                "port": "in"
              },
              "size": 4
            }
          ]
        }
      }
    },
    "2715b1b7c75763e274a4735fc4a9a48c1432773b": {
      "package": {
        "name": "tmds",
        "version": "0.1",
        "description": "tmds needed for VGA/GPDI output",
        "author": "Goran Mahovlic",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "f66f77e6-ad74-4cec-9aa4-402b22c70cd1",
              "type": "basic.input",
              "data": {
                "name": "clk",
                "clock": false
              },
              "position": {
                "x": 616,
                "y": 336
              }
            },
            {
              "id": "79cf4052-ba99-4d71-94e6-64337e5e31b0",
              "type": "basic.input",
              "data": {
                "name": "data",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": 616,
                "y": 496
              }
            },
            {
              "id": "c098265c-852e-4d05-bce2-dd5928b4cb26",
              "type": "basic.input",
              "data": {
                "name": "c",
                "range": "[1:0]",
                "clock": false,
                "size": 2
              },
              "position": {
                "x": 608,
                "y": 656
              }
            },
            {
              "id": "0d84a7c9-e0f1-4666-ab60-ace36137418a",
              "type": "basic.output",
              "data": {
                "name": "encoded",
                "range": "[9:0]",
                "size": 10
              },
              "position": {
                "x": 1784,
                "y": 656
              }
            },
            {
              "id": "376def3c-ca51-42c4-91ab-c4396491098f",
              "type": "basic.input",
              "data": {
                "name": "blank",
                "clock": false
              },
              "position": {
                "x": 608,
                "y": 808
              }
            },
            {
              "id": "6f6f8dd4-433a-40f6-88eb-7233c801ba77",
              "type": "basic.input",
              "data": {
                "name": "resetn",
                "clock": false
              },
              "position": {
                "x": 608,
                "y": 968
              }
            },
            {
              "id": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
              "type": "basic.code",
              "data": {
                "code": "// File hdl/tmds_encoder.vhd translated with vhd2vl v3.0 VHDL to Verilog RTL translator\n// vhd2vl settings:\n//  * Verilog Module Declaration Style: 2001\n\n// vhd2vl is Free (libre) Software:\n//   Copyright (C) 2001 Vincenzo Liguori - Ocean Logic Pty Ltd\n//     http://www.ocean-logic.com\n//   Modifications Copyright (C) 2006 Mark Gonzales - PMC Sierra Inc\n//   Modifications (C) 2010 Shankar Giri\n//   Modifications Copyright (C) 2002-2017 Larry Doolittle\n//     http://doolittle.icarus.com/~larry/vhd2vl/\n//   Modifications (C) 2017 Rodrigo A. Melo\n//\n//   vhd2vl comes with ABSOLUTELY NO WARRANTY.  Always check the resulting\n//   Verilog for correctness, ideally with a formal verification tool.\n//\n//   You are welcome to redistribute vhd2vl under certain conditions.\n//   See the license (GPLv2) file included with the source for details.\n\n// The result of translation follows.  Its copyright status should be\n// considered unchanged from the original VHDL.\n\n//--------------------------------------------------------------------------------\n// Engineer: Mike Field <hamster@snap.net.nz>\n// \n// Description: TMDS Encoder \n//     8 bits colour, 2 control bits and one blanking bits in\n//       10 bits of TMDS encoded data out\n//     Clocked at the pixel clock\n//\n//--------------------------------------------------------------------------------\n// See: http://hamsterworks.co.nz/mediawiki/index.php/Dvid_test\n//      http://hamsterworks.co.nz/mediawiki/index.php/FPGA_Projects\n//\n// Copyright (c) 2012 Mike Field <hamster@snap.net.nz>\n//\n// Permission is hereby granted, free of charge, to any person obtaining a copy\n// of this software and associated documentation files (the \"Software\"), to deal\n// in the Software without restriction, including without limitation the rights\n// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell\n// copies of the Software, and to permit persons to whom the Software is\n// furnished to do so, subject to the following conditions:\n//\n// The above copyright notice and this permission notice shall be included in\n// all copies or substantial portions of the Software.\n//\n// THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR\n// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,\n// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE\n// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER\n// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,\n// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN\n// THE SOFTWARE.\n//\n// no timescale needed\n\nwire [8:0] xored;\nwire [8:0] xnored;\nwire [3:0] ones;\nreg [8:0] data_word;\nreg [8:0] data_word_inv;\nwire [3:0] data_word_disparity;\nreg [3:0] dc_bias;\nreg [9:0] encoded;\n\n// Work our the two different encodings for the byte\nassign xored[0] = data[0];\nassign xored[1] = data[1] ^ xored[0];\nassign xored[2] = data[2] ^ xored[1];\nassign xored[3] = data[3] ^ xored[2];\nassign xored[4] = data[4] ^ xored[3];\nassign xored[5] = data[5] ^ xored[4];\nassign xored[6] = data[6] ^ xored[5];\nassign xored[7] = data[7] ^ xored[6];\nassign xored[8] = 1'b1;\nassign xnored[0] = data[0];\nassign xnored[1] =  ~(data[1] ^ xnored[0]);\nassign xnored[2] =  ~(data[2] ^ xnored[1]);\nassign xnored[3] =  ~(data[3] ^ xnored[2]);\nassign xnored[4] =  ~(data[4] ^ xnored[3]);\nassign xnored[5] =  ~(data[5] ^ xnored[4]);\nassign xnored[6] =  ~(data[6] ^ xnored[5]);\nassign xnored[7] =  ~(data[7] ^ xnored[6]);\nassign xnored[8] = 1'b0;\n// Count how many ones are set in data\nassign ones = 4'b0000 + data[0] + data[1] + data[2] + data[3] + data[4] + data[5] + data[6] + data[7];\n// Decide which encoding to use\nalways @(ones, data[0], xnored, xored) begin\nif(ones > 4 || (ones == 4 && data[0] == 1'b0)) begin\n  data_word <= xnored;\n  data_word_inv <=  ~(xnored);\nend\nelse begin\n  data_word <= xored;\n  data_word_inv <=  ~(xored);\nend\nend\n\n// Work out the DC bias of the dataword;\nassign data_word_disparity = 4'b1100 + data_word[0] + data_word[1] + data_word[2] + data_word[3] + data_word[4] + data_word[5] + data_word[6] + data_word[7];\n// Now work out what the output should be\nalways @(posedge clk) begin\nif (!resetn)\n  dc_bias <= 1'b0;\nif(blank == 1'b1) begin\n  // In the control periods, all values have and have balanced bit count\n  case(c)\n  2'b00 : begin\n    encoded <= 10'b1101010100;\n  end\n  2'b01 : begin\n    encoded <= 10'b0010101011;\n  end\n  2'b10 : begin\n    encoded <= 10'b0101010100;\n  end\n  default : begin\n    encoded <= 10'b1010101011;\n  end\n  endcase\n  dc_bias <= {4{1'b0}};\nend\nelse begin\n  if(dc_bias == 5'b00000 || data_word_disparity == 0) begin\n    // dataword has no disparity\n    if(data_word[8] == 1'b1) begin\n      encoded <= {2'b01,data_word[7:0]};\n      dc_bias <= dc_bias + data_word_disparity;\n    end\n    else begin\n      encoded <= {2'b10,data_word_inv[7:0]};\n      dc_bias <= dc_bias - data_word_disparity;\n    end\n  end\n  else if((dc_bias[3] == 1'b0 && data_word_disparity[3] == 1'b0) || (dc_bias[3] == 1'b1 && data_word_disparity[3] == 1'b1)) begin\n    encoded <= {1'b1,data_word[8],data_word_inv[7:0]};\n    dc_bias <= dc_bias + data_word[8] - data_word_disparity;\n  end\n  else begin\n    encoded <= {1'b0,data_word};\n    dc_bias <= dc_bias - data_word_inv[8] + data_word_disparity;\n  end\nend\nend\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "data",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "c",
                      "range": "[1:0]",
                      "size": 2
                    },
                    {
                      "name": "blank"
                    },
                    {
                      "name": "resetn"
                    }
                  ],
                  "out": [
                    {
                      "name": "encoded",
                      "range": "[9:0]",
                      "size": 10
                    }
                  ]
                }
              },
              "position": {
                "x": 776,
                "y": 288
              },
              "size": {
                "width": 920,
                "height": 792
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "6f6f8dd4-433a-40f6-88eb-7233c801ba77",
                "port": "out"
              },
              "target": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "resetn"
              }
            },
            {
              "source": {
                "block": "f66f77e6-ad74-4cec-9aa4-402b22c70cd1",
                "port": "out"
              },
              "target": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "79cf4052-ba99-4d71-94e6-64337e5e31b0",
                "port": "out"
              },
              "target": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "data"
              },
              "size": 8
            },
            {
              "source": {
                "block": "c098265c-852e-4d05-bce2-dd5928b4cb26",
                "port": "out"
              },
              "target": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "c"
              },
              "size": 2
            },
            {
              "source": {
                "block": "376def3c-ca51-42c4-91ab-c4396491098f",
                "port": "out"
              },
              "target": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "blank"
              }
            },
            {
              "source": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "encoded"
              },
              "target": {
                "block": "0d84a7c9-e0f1-4666-ab60-ace36137418a",
                "port": "in"
              },
              "size": 10
            }
          ]
        }
      }
    },
    "fcce4a9f0b39c1325fbfdc8eba8d91595af10041": {
      "package": {
        "name": "PLL",
        "version": "0.1",
        "description": "PLL needed for VGA/GPDI output",
        "author": "Goran Mahovlic",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "fa3567a3-a71e-463e-9184-153c8fec9864",
              "type": "basic.output",
              "data": {
                "name": "clk_25MHz"
              },
              "position": {
                "x": 1552,
                "y": 496
              }
            },
            {
              "id": "71d81973-35ed-4b5f-b531-1a0649b987a0",
              "type": "basic.output",
              "data": {
                "name": "clk_125MHz"
              },
              "position": {
                "x": 1552,
                "y": 616
              }
            },
            {
              "id": "f66f77e6-ad74-4cec-9aa4-402b22c70cd1",
              "type": "basic.input",
              "data": {
                "name": "clk",
                "clock": false,
                "virtual": false
              },
              "position": {
                "x": 728,
                "y": 680
              }
            },
            {
              "id": "ce413c5f-e187-4460-aca5-5a0cc713da6b",
              "type": "basic.output",
              "data": {
                "name": "clk_locked"
              },
              "position": {
                "x": 1560,
                "y": 736
              }
            },
            {
              "id": "5f0dddcc-5fb4-43c0-b5ce-4b93ea61c16b",
              "type": "basic.output",
              "data": {
                "name": "clk_250MHz"
              },
              "position": {
                "x": 1552,
                "y": 856
              }
            },
            {
              "id": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
              "type": "basic.code",
              "data": {
                "code": "wire clkfb;\nwire clkos;\nwire clkop;\n(* ICP_CURRENT=\"12\" *) (* LPF_RESISTOR=\"8\" *) (* MFG_ENABLE_FILTEROPAMP=\"1\" *) (* MFG_GMCREF_SEL=\"2\" *)\nEHXPLLL #(\n        .PLLRST_ENA(\"DISABLED\"),\n        .INTFB_WAKE(\"DISABLED\"),\n        .STDBY_ENABLE(\"DISABLED\"),\n        .DPHASE_SOURCE(\"DISABLED\"),\n        .CLKOP_FPHASE(0),\n        .CLKOP_CPHASE(0),\n        .OUTDIVIDER_MUXA(\"DIVA\"),\n        .CLKOP_ENABLE(\"ENABLED\"),\n        .CLKOP_DIV(2),\n        .CLKOS_ENABLE(\"ENABLED\"),\n        .CLKOS_DIV(4),\n        .CLKOS_CPHASE(0),\n        .CLKOS_FPHASE(0),\n        .CLKOS2_ENABLE(\"ENABLED\"),\n        .CLKOS2_DIV(20),\n        .CLKOS2_CPHASE(0),\n        .CLKOS2_FPHASE(0),\n        .CLKFB_DIV(10),\n        .CLKI_DIV(1),\n        .FEEDBK_PATH(\"INT_OP\")\n    ) pll_i (\n        .CLKI(clk),\n        .CLKFB(clkfb),\n        .CLKINTFB(clkfb),\n        .CLKOP(clkop),\n        .CLKOS(clks1),\n        .CLKOS2(clks2),\n        .RST(1'b0),\n        .STDBY(1'b0),\n        .PHASESEL0(1'b0),\n        .PHASESEL1(1'b0),\n        .PHASEDIR(1'b0),\n        .PHASESTEP(1'b0),\n        .PLLWAKESYNC(1'b0),\n        .ENCLKOP(1'b0),\n        .LOCK(locked)\n\t);\nassign clko = clkop;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    }
                  ],
                  "out": [
                    {
                      "name": "clks2"
                    },
                    {
                      "name": "clks1"
                    },
                    {
                      "name": "locked"
                    },
                    {
                      "name": "clko"
                    }
                  ]
                }
              },
              "position": {
                "x": 856,
                "y": 472
              },
              "size": {
                "width": 640,
                "height": 472
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "locked"
              },
              "target": {
                "block": "ce413c5f-e187-4460-aca5-5a0cc713da6b",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "clko"
              },
              "target": {
                "block": "5f0dddcc-5fb4-43c0-b5ce-4b93ea61c16b",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "clks2"
              },
              "target": {
                "block": "fa3567a3-a71e-463e-9184-153c8fec9864",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "clks1"
              },
              "target": {
                "block": "71d81973-35ed-4b5f-b531-1a0649b987a0",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "f66f77e6-ad74-4cec-9aa4-402b22c70cd1",
                "port": "out"
              },
              "target": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "clk"
              }
            }
          ]
        }
      }
    }
  }
}