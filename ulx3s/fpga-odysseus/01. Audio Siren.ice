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
          "id": "184a1624-2260-4529-a861-37e23d85bba2",
          "type": "basic.output",
          "data": {
            "name": "audiol",
            "range": "[3:0]",
            "pins": [
              {
                "index": "3",
                "name": "audio_l0",
                "value": "E4"
              },
              {
                "index": "2",
                "name": "audio_l1",
                "value": "D3"
              },
              {
                "index": "1",
                "name": "audio_l2",
                "value": "C3"
              },
              {
                "index": "0",
                "name": "audio_l3",
                "value": "B3"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 240,
            "y": -208
          }
        },
        {
          "id": "31f43d82-98d7-499a-871f-1ab847ee60db",
          "type": "basic.output",
          "data": {
            "name": "audior",
            "range": "[3:0]",
            "pins": [
              {
                "index": "3",
                "name": "audio_r0",
                "value": "A3"
              },
              {
                "index": "2",
                "name": "audio_r1",
                "value": "B5"
              },
              {
                "index": "1",
                "name": "audio_r2",
                "value": "D5"
              },
              {
                "index": "0",
                "name": "audio_r3",
                "value": "C5"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 240,
            "y": -24
          }
        },
        {
          "id": "7c889c36-f495-424e-afe5-bb5a35350332",
          "type": "basic.constant",
          "data": {
            "name": "ToneA4",
            "value": "25000000/440/2",
            "local": false
          },
          "position": {
            "x": -296,
            "y": -312
          }
        },
        {
          "id": "edd8f9cb-8902-496e-9642-458a84d902e2",
          "type": "basic.constant",
          "data": {
            "name": "ToneA5",
            "value": "25000000/880/2",
            "local": false
          },
          "position": {
            "x": -32,
            "y": -312
          }
        },
        {
          "id": "522f4259-2128-4d19-958e-cc7c78ea705b",
          "type": "basic.info",
          "data": {
            "info": "Output siren on ULX3S audio connector",
            "readonly": true
          },
          "position": {
            "x": -384,
            "y": -384
          },
          "size": {
            "width": 328,
            "height": 40
          }
        },
        {
          "id": "4908c9de-130b-466b-aee3-f53bde588562",
          "type": "basic.code",
          "data": {
            "code": "reg [25:0] counter;\nreg [23:0] tone;\n\nreg [3:0] audiol;\nreg [3:0] audior;\n\nalways @(posedge clk) \n    tone <= tone+1;\n\nalways @(posedge clk) \n    if(counter==26'b0) \n    begin\n        counter <= (tone[23] ? ToneA4-1 : ToneA5-1 ); \n        audiol <= ~audiol;\n        audior <= ~audior;\n    end\n    else \n        counter <= counter-1;",
            "params": [
              {
                "name": "ToneA4"
              },
              {
                "name": "ToneA5"
              }
            ],
            "ports": {
              "in": [
                {
                  "name": "clk"
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
            "x": -384,
            "y": -192
          },
          "size": {
            "width": 536,
            "height": 312
          }
        },
        {
          "id": "e9d77a91-2179-483d-a77b-4b3f92dd2f94",
          "type": "basic.info",
          "data": {
            "info": "![](https://github.com/intergalaktik/icestudio-examples/raw/master/ulx3s/pictures/Theory.png)",
            "readonly": true
          },
          "position": {
            "x": 360,
            "y": -456
          },
          "size": {
            "width": 640,
            "height": 272
          }
        },
        {
          "id": "f38dea9c-98de-4b9f-887c-798c72d3b793",
          "type": "basic.info",
          "data": {
            "info": "![](https://raw.githubusercontent.com/intergalaktik/icestudio-examples/master/ulx3s/pictures/ToneFrequency.png)",
            "readonly": true
          },
          "position": {
            "x": 360,
            "y": -104
          },
          "size": {
            "width": 656,
            "height": 384
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "4908c9de-130b-466b-aee3-f53bde588562",
            "port": "audiol"
          },
          "target": {
            "block": "184a1624-2260-4529-a861-37e23d85bba2",
            "port": "in"
          },
          "size": 4
        },
        {
          "source": {
            "block": "4908c9de-130b-466b-aee3-f53bde588562",
            "port": "audior"
          },
          "target": {
            "block": "31f43d82-98d7-499a-871f-1ab847ee60db",
            "port": "in"
          },
          "size": 4
        },
        {
          "source": {
            "block": "edd8f9cb-8902-496e-9642-458a84d902e2",
            "port": "constant-out"
          },
          "target": {
            "block": "4908c9de-130b-466b-aee3-f53bde588562",
            "port": "ToneA5"
          }
        },
        {
          "source": {
            "block": "7c889c36-f495-424e-afe5-bb5a35350332",
            "port": "constant-out"
          },
          "target": {
            "block": "4908c9de-130b-466b-aee3-f53bde588562",
            "port": "ToneA4"
          }
        }
      ]
    }
  },
  "dependencies": {}
}