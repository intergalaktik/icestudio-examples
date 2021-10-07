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
          "id": "c9d95bfe-5f79-4bff-aced-341ccc6025c4",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "led_0",
                "value": "B2"
              },
              {
                "index": "6",
                "name": "led_1",
                "value": "C2"
              },
              {
                "index": "5",
                "name": "led_2",
                "value": "C1"
              },
              {
                "index": "4",
                "name": "led_3",
                "value": "D2"
              },
              {
                "index": "3",
                "name": "led_4",
                "value": "D1"
              },
              {
                "index": "2",
                "name": "led_5",
                "value": "E2"
              },
              {
                "index": "1",
                "name": "led_6",
                "value": "E1"
              },
              {
                "index": "0",
                "name": "led_7",
                "value": "H3"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 568,
            "y": 104
          }
        },
        {
          "id": "02054c3e-70b4-428b-bdb8-cec60d1c3523",
          "type": "basic.info",
          "data": {
            "info": "Using buses for displaying a fixed value in the LEDs",
            "readonly": true
          },
          "position": {
            "x": 72,
            "y": 96
          },
          "size": {
            "width": 432,
            "height": 32
          }
        },
        {
          "id": "06b3188b-ecff-4ae0-95e3-ab7c5cf2cce4",
          "type": "basic.code",
          "data": {
            "code": "//-- Displaying a 8-bit data\n//-- in the LEDs\nassign data = 8'hAA;",
            "params": [],
            "ports": {
              "in": [],
              "out": [
                {
                  "name": "data",
                  "range": "[7:0]",
                  "size": 8
                }
              ]
            }
          },
          "position": {
            "x": 72,
            "y": 184
          },
          "size": {
            "width": 304,
            "height": 128
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "06b3188b-ecff-4ae0-95e3-ab7c5cf2cce4",
            "port": "data"
          },
          "target": {
            "block": "c9d95bfe-5f79-4bff-aced-341ccc6025c4",
            "port": "in"
          },
          "size": 8
        }
      ]
    }
  },
  "dependencies": {}
}