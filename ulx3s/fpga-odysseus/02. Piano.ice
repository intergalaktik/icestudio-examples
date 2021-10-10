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
          "id": "73dd6e83-43a2-4869-a1ff-236fa49c5e3d",
          "type": "basic.output",
          "data": {
            "name": "audiol",
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
            "x": 720,
            "y": 88
          }
        },
        {
          "id": "b73c971d-5d19-4443-81e9-9e0300733264",
          "type": "basic.output",
          "data": {
            "name": "audior",
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
            "x": 0,
            "y": 96
          }
        },
        {
          "id": "9414e451-4a76-406b-b576-4a4902828891",
          "type": "basic.input",
          "data": {
            "name": "BTN",
            "range": "[6:0]",
            "pins": [
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
            "x": 752,
            "y": 688
          }
        },
        {
          "id": "e81733e1-ef39-40e0-9f6a-52130b4e892c",
          "type": "basic.constant",
          "data": {
            "name": "ToneC5",
            "value": "25000000/523/2",
            "local": false
          },
          "position": {
            "x": 184,
            "y": 200
          }
        },
        {
          "id": "ab78749b-e581-4fe7-b170-2dff2296d4a1",
          "type": "basic.constant",
          "data": {
            "name": "ToneG5",
            "value": "25000000/783/2",
            "local": false
          },
          "position": {
            "x": 184,
            "y": 112
          }
        },
        {
          "id": "60bbdd55-6a43-4c34-b5dd-ff35fb677108",
          "type": "basic.constant",
          "data": {
            "name": "ToneB4",
            "value": "25000000/494/2",
            "local": false
          },
          "position": {
            "x": 288,
            "y": 112
          }
        },
        {
          "id": "c6142a29-7aa8-4e0e-93b3-1e08818e7885",
          "type": "basic.constant",
          "data": {
            "name": "ToneD5",
            "value": "25000000/587/2",
            "local": false
          },
          "position": {
            "x": 288,
            "y": 200
          }
        },
        {
          "id": "24eb9b15-e11d-401e-a01f-3bed8cb9a45a",
          "type": "basic.constant",
          "data": {
            "name": "ToneE5",
            "value": "25000000/659/2",
            "local": false
          },
          "position": {
            "x": 392,
            "y": 200
          }
        },
        {
          "id": "7c7c728c-931e-4cff-a2fc-c7da39d91f71",
          "type": "basic.constant",
          "data": {
            "name": "ToneA4",
            "value": "25000000/440/2",
            "local": false
          },
          "position": {
            "x": 392,
            "y": 112
          }
        },
        {
          "id": "87e4096f-1c5a-41d8-baf0-420ee6c8634e",
          "type": "basic.constant",
          "data": {
            "name": "ToneF5",
            "value": "25000000/698/2",
            "local": false
          },
          "position": {
            "x": 496,
            "y": 200
          }
        },
        {
          "id": "07819b85-9c72-47fc-8e61-e1a257f44c50",
          "type": "basic.info",
          "data": {
            "info": "DIY Piano",
            "readonly": true
          },
          "position": {
            "x": 8,
            "y": 24
          },
          "size": {
            "width": 328,
            "height": 40
          }
        },
        {
          "id": "b5e6f820-79f1-425f-8b78-9402da44bc7d",
          "type": "basic.info",
          "data": {
            "info": "![](https://raw.githubusercontent.com/intergalaktik/icestudio-examples/master/ulx3s/pictures/Piano.png)",
            "readonly": true
          },
          "position": {
            "x": 920,
            "y": 152
          },
          "size": {
            "width": 640,
            "height": 272
          }
        },
        {
          "id": "b2bfafb2-71aa-45bc-92a4-3c130b6a131e",
          "type": "basic.info",
          "data": {
            "info": "![](https://raw.githubusercontent.com/intergalaktik/icestudio-examples/master/ulx3s/pictures/ToneFrequency.png)",
            "readonly": true
          },
          "position": {
            "x": 920,
            "y": 504
          },
          "size": {
            "width": 656,
            "height": 384
          }
        },
        {
          "id": "b63aa514-48b9-4b2e-b67a-378f5bda8d62",
          "type": "basic.code",
          "data": {
            "code": "reg [25:0] counter;\n\nreg [3:0] audiol;\nreg [3:0] audior;\n\nalways @(posedge clk) \n    if(counter==26'b0) counter <= (btn[6] ? ToneA4-1 : \n                               btn[5] ? ToneB4-1 : \n                               btn[4] ? ToneC5-1 : \n                               btn[3] ? ToneD5-1 : \n                               btn[2] ? ToneE5-1 : \n                               btn[1] ? ToneF5-1 : \n                               0); else counter <= counter-1;\n\nalways @(posedge clk) \n    if(counter==0)\n    begin\n        audiol <= ~audiol;\n        audior <= ~audior;\n    end",
            "params": [
              {
                "name": "ToneA4"
              },
              {
                "name": "ToneB4"
              },
              {
                "name": "ToneC5"
              },
              {
                "name": "ToneD5"
              },
              {
                "name": "ToneE5"
              },
              {
                "name": "ToneF5"
              },
              {
                "name": "ToneG5"
              }
            ],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "btn",
                  "range": "[6:0]",
                  "size": 7
                }
              ],
              "out": [
                {
                  "name": "audiol",
                  "range": "[3:0]",
                  "size": 4
                },
                {
                  "name": "audior",
                  "range": "[3:0]",
                  "size": 4
                }
              ]
            }
          },
          "position": {
            "x": -8,
            "y": 384
          },
          "size": {
            "width": 688,
            "height": 368
          }
        },
        {
          "id": "3f700e3a-44b5-4897-b9d8-89336e83ae5d",
          "type": "basic.info",
          "data": {
            "info": "Your task: Connect buttons, audio, tones.\nVerify/Build/Upload to board and check if you have piano sound.",
            "readonly": true
          },
          "position": {
            "x": -8,
            "y": 784
          },
          "size": {
            "width": 688,
            "height": 176
          }
        }
      ],
      "wires": []
    }
  },
  "dependencies": {}
}