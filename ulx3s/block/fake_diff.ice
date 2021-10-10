{
  "version": "1.2",
  "package": {
    "name": "DIFF",
    "version": "0.1",
    "description": "fake_diff needed for VGA/GPDI output",
    "author": "Goran Mahovlic",
    "image": ""
  },
  "design": {
    "board": "ulx3s-12f",
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
            "x": 328,
            "y": 336
          }
        },
        {
          "id": "dc8e801b-58e7-4917-8205-c7d4acd4aa94",
          "type": "basic.output",
          "data": {
            "name": "out_p",
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
            "x": 1792,
            "y": 456
          }
        },
        {
          "id": "363612bc-b40c-45d7-b86c-a909218460fc",
          "type": "basic.input",
          "data": {
            "name": "in_clock",
            "range": "[1:0]",
            "pins": [
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
            "x": 320,
            "y": 496
          }
        },
        {
          "id": "c098265c-852e-4d05-bce2-dd5928b4cb26",
          "type": "basic.input",
          "data": {
            "name": "in_red",
            "range": "[1:0]",
            "clock": false,
            "size": 2,
            "virtual": false
          },
          "position": {
            "x": 320,
            "y": 656
          }
        },
        {
          "id": "c650a224-95d2-4075-a756-dbd97db03e78",
          "type": "basic.input",
          "data": {
            "name": "in_green",
            "range": "[1:0]",
            "pins": [
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
            "x": 320,
            "y": 808
          }
        },
        {
          "id": "bd54970b-7475-4f63-82c2-aa1c2ca50d7d",
          "type": "basic.output",
          "data": {
            "name": "out_n",
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
            "x": 1784,
            "y": 848
          }
        },
        {
          "id": "2c322ecf-b9c5-46f8-8c8a-cf8cb334693d",
          "type": "basic.input",
          "data": {
            "name": "in_blue",
            "range": "[1:0]",
            "pins": [
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
            "x": 320,
            "y": 968
          }
        },
        {
          "id": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
          "type": "basic.code",
          "data": {
            "code": "// DDR mode uses Lattice ECP5 vendor-specific module ODDRX1F\n//wire clk_shift;\nwire [1:0] tmds[3:0];\nassign tmds[3] = in_clock;\nassign tmds[2] = in_red;\nassign tmds[1] = in_green;\nassign tmds[0] = in_blue;\n\n// register stage to improve timing of the fake differential\nreg [1:0] R_tmds_p[3:0], R_tmds_n[3:0];\n\nassign out_p[3] =  tmds[3];\nassign out_n[3] =  tmds[3];\nassign out_p[2] =  tmds[2];\nassign out_n[2] =  tmds[2];\nassign out_p[1] =  tmds[1];\nassign out_n[1] =  tmds[1];\nassign out_p[0] =  tmds[0];\nassign out_n[0] =  tmds[0];",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk_shift"
                },
                {
                  "name": "in_clock",
                  "range": "[1:0]",
                  "size": 2
                },
                {
                  "name": "in_red",
                  "range": "[1:0]",
                  "size": 2
                },
                {
                  "name": "in_green",
                  "range": "[1:0]",
                  "size": 2
                },
                {
                  "name": "in_blue",
                  "range": "[1:0]",
                  "size": 2
                }
              ],
              "out": [
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
            "x": 560,
            "y": 288
          },
          "size": {
            "width": 1104,
            "height": 792
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
            "port": "out_p"
          },
          "target": {
            "block": "dc8e801b-58e7-4917-8205-c7d4acd4aa94",
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
            "block": "bd54970b-7475-4f63-82c2-aa1c2ca50d7d",
            "port": "in"
          },
          "size": 4
        },
        {
          "source": {
            "block": "f66f77e6-ad74-4cec-9aa4-402b22c70cd1",
            "port": "out"
          },
          "target": {
            "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
            "port": "clk_shift"
          }
        },
        {
          "source": {
            "block": "363612bc-b40c-45d7-b86c-a909218460fc",
            "port": "out"
          },
          "target": {
            "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
            "port": "in_clock"
          },
          "size": 2
        },
        {
          "source": {
            "block": "c098265c-852e-4d05-bce2-dd5928b4cb26",
            "port": "out"
          },
          "target": {
            "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
            "port": "in_red"
          },
          "size": 2
        },
        {
          "source": {
            "block": "c650a224-95d2-4075-a756-dbd97db03e78",
            "port": "out"
          },
          "target": {
            "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
            "port": "in_green"
          },
          "size": 2
        },
        {
          "source": {
            "block": "2c322ecf-b9c5-46f8-8c8a-cf8cb334693d",
            "port": "out"
          },
          "target": {
            "block": "17dcdd21-83c4-4f56-83b9-9303bfdc10cb",
            "port": "in_blue"
          },
          "size": 2
        }
      ]
    }
  },
  "dependencies": {}
}