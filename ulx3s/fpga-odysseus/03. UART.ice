{
  "version": "1.2",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "ulx3s-12f",
    "graph": {
      "blocks": [
        {
          "id": "e35f1957-1707-45ad-b03d-de65d407af71",
          "type": "basic.output",
          "data": {
            "name": "ULX3S-TX",
            "pins": [
              {
                "index": "0",
                "name": "ftdi_rxd",
                "value": "L4"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 712,
            "y": 80
          }
        },
        {
          "id": "d0f5d85e-79ff-4c00-94b0-82b4e605ccb7",
          "type": "basic.input",
          "data": {
            "name": "ENABLE",
            "pins": [
              {
                "index": "0",
                "name": "btn_1",
                "value": "R1"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -160,
            "y": 192
          }
        },
        {
          "id": "9763365f-db72-48e4-b8fb-483faf1cd46a",
          "type": "basic.code",
          "data": {
            "code": "reg [7:0]data;\nreg [31:0]divider;\nwire restn;\nwire clkOut;\nwire data_we;\n\ninitial data = 32'd65;\ninitial divider = 25000000/115200;\n\nassign clkOut = clk;\nassign resetn = enable;\nassign data_we = 1'b1;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "enable"
                }
              ],
              "out": [
                {
                  "name": "clkOut"
                },
                {
                  "name": "resetn"
                },
                {
                  "name": "data_we"
                },
                {
                  "name": "data",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "divider",
                  "range": "[31:0]",
                  "size": 32
                }
              ]
            }
          },
          "position": {
            "x": -16,
            "y": 8
          },
          "size": {
            "width": 392,
            "height": 288
          }
        },
        {
          "id": "14bd3484-1a68-4771-9853-c722a9468aeb",
          "type": "e4ece1bb5979ee1d9e1fde7005dbe43893c4da05",
          "position": {
            "x": 576,
            "y": 72
          },
          "size": {
            "width": 96,
            "height": 160
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "d0f5d85e-79ff-4c00-94b0-82b4e605ccb7",
            "port": "out"
          },
          "target": {
            "block": "9763365f-db72-48e4-b8fb-483faf1cd46a",
            "port": "enable"
          }
        },
        {
          "source": {
            "block": "14bd3484-1a68-4771-9853-c722a9468aeb",
            "port": "4140f966-3fd4-4c7f-a3d3-4528b9ffc39c"
          },
          "target": {
            "block": "e35f1957-1707-45ad-b03d-de65d407af71",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "9763365f-db72-48e4-b8fb-483faf1cd46a",
            "port": "clkOut"
          },
          "target": {
            "block": "14bd3484-1a68-4771-9853-c722a9468aeb",
            "port": "f66f77e6-ad74-4cec-9aa4-402b22c70cd1"
          },
          "vertices": [
            {
              "x": 472,
              "y": 56
            }
          ]
        },
        {
          "source": {
            "block": "9763365f-db72-48e4-b8fb-483faf1cd46a",
            "port": "resetn"
          },
          "target": {
            "block": "14bd3484-1a68-4771-9853-c722a9468aeb",
            "port": "54e644fb-09a9-4a4d-ac1d-e9c7456cb66f"
          }
        },
        {
          "source": {
            "block": "9763365f-db72-48e4-b8fb-483faf1cd46a",
            "port": "data_we"
          },
          "target": {
            "block": "14bd3484-1a68-4771-9853-c722a9468aeb",
            "port": "260c6329-dcd4-43be-8f9d-d6298c6e6943"
          }
        },
        {
          "source": {
            "block": "9763365f-db72-48e4-b8fb-483faf1cd46a",
            "port": "data"
          },
          "target": {
            "block": "14bd3484-1a68-4771-9853-c722a9468aeb",
            "port": "f5337542-c686-422c-84a3-7e3ec3ff5db5"
          },
          "size": 8
        },
        {
          "source": {
            "block": "9763365f-db72-48e4-b8fb-483faf1cd46a",
            "port": "divider"
          },
          "target": {
            "block": "14bd3484-1a68-4771-9853-c722a9468aeb",
            "port": "669f2c1b-cf09-4f0f-8c4f-6be071f4a331"
          },
          "size": 32
        }
      ]
    }
  },
  "dependencies": {
    "e4ece1bb5979ee1d9e1fde7005dbe43893c4da05": {
      "package": {
        "name": "UART",
        "version": "0.1",
        "description": "Uart para comunicaciones serie con el pico-riscv",
        "author": "Juan Gonzalez-Gomez (Código de Clifford wolf, del proyecto picoriscv)",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "f66f77e6-ad74-4cec-9aa4-402b22c70cd1",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 648,
                "y": 488
              }
            },
            {
              "id": "4140f966-3fd4-4c7f-a3d3-4528b9ffc39c",
              "type": "basic.output",
              "data": {
                "name": "TX"
              },
              "position": {
                "x": 1584,
                "y": 560
              }
            },
            {
              "id": "54e644fb-09a9-4a4d-ac1d-e9c7456cb66f",
              "type": "basic.input",
              "data": {
                "name": "resetn",
                "clock": false
              },
              "position": {
                "x": 648,
                "y": 584
              }
            },
            {
              "id": "260c6329-dcd4-43be-8f9d-d6298c6e6943",
              "type": "basic.input",
              "data": {
                "name": "data_we",
                "clock": false
              },
              "position": {
                "x": 648,
                "y": 680
              }
            },
            {
              "id": "f5337542-c686-422c-84a3-7e3ec3ff5db5",
              "type": "basic.input",
              "data": {
                "name": "data",
                "range": "[7:0]",
                "pins": [
                  {
                    "index": "7",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "6",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "5",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "4",
                    "name": "",
                    "value": ""
                  },
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
                "virtual": false,
                "clock": false
              },
              "position": {
                "x": 648,
                "y": 768
              }
            },
            {
              "id": "ce413c5f-e187-4460-aca5-5a0cc713da6b",
              "type": "basic.output",
              "data": {
                "name": "wait"
              },
              "position": {
                "x": 1592,
                "y": 792
              }
            },
            {
              "id": "669f2c1b-cf09-4f0f-8c4f-6be071f4a331",
              "type": "basic.input",
              "data": {
                "name": "div",
                "range": "[31:0]",
                "clock": false,
                "size": 32
              },
              "position": {
                "x": 648,
                "y": 864
              }
            },
            {
              "id": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
              "type": "basic.code",
              "data": {
                "code": "reg [9:0] send_pattern;\nreg [3:0] send_bitcnt;\nreg [31:0] send_divcnt;\n\nassign data_wait = data_we && (send_bitcnt);\n\nassign ser_tx = send_pattern[0];\n\nalways @(posedge clk) begin\n\tsend_divcnt <= send_divcnt + 1;\n\tif (!resetn) begin\n\t\tsend_pattern <= ~0;\n\t\tsend_bitcnt <= 0;\n\t\tsend_divcnt <= 0;\n\tend else begin\n\t\tif (data_we && !send_bitcnt) begin\n\t\t\tsend_pattern <= {1'b1, data, 1'b0};\n\t\t\tsend_bitcnt <= 10;\n\t\t\tsend_divcnt <= 0;\n\t\tend else\n\t\tif (send_divcnt > cfg_divider && send_bitcnt) begin\n\t\t\tsend_pattern <= {1'b1, send_pattern[9:1]};\n\t\t\tsend_bitcnt <= send_bitcnt - 1;\n\t\t\tsend_divcnt <= 0;\n\t\tend\n\tend\nend",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "resetn"
                    },
                    {
                      "name": "data_we"
                    },
                    {
                      "name": "data",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "cfg_divider",
                      "range": "[31:0]",
                      "size": 32
                    }
                  ],
                  "out": [
                    {
                      "name": "ser_tx"
                    },
                    {
                      "name": "data_wait"
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
                "port": "ser_tx"
              },
              "target": {
                "block": "4140f966-3fd4-4c7f-a3d3-4528b9ffc39c",
                "port": "in"
              },
              "vertices": []
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
                "block": "54e644fb-09a9-4a4d-ac1d-e9c7456cb66f",
                "port": "out"
              },
              "target": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "resetn"
              }
            },
            {
              "source": {
                "block": "669f2c1b-cf09-4f0f-8c4f-6be071f4a331",
                "port": "out"
              },
              "target": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "cfg_divider"
              },
              "size": 32
            },
            {
              "source": {
                "block": "f5337542-c686-422c-84a3-7e3ec3ff5db5",
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
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "data_wait"
              },
              "target": {
                "block": "ce413c5f-e187-4460-aca5-5a0cc713da6b",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "260c6329-dcd4-43be-8f9d-d6298c6e6943",
                "port": "out"
              },
              "target": {
                "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
                "port": "data_we"
              }
            }
          ]
        }
      }
    }
  }
}