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
          "id": "a25ed287-31fc-4e5b-8a1b-b66dc4f2c02c",
          "type": "basic.input",
          "data": {
            "name": "PushButton",
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
            "x": 128,
            "y": 104
          }
        },
        {
          "id": "ba2984df-5b7b-4376-9c6e-f78770d715b5",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "pins": [
              {
                "index": "0",
                "name": "led_0",
                "value": "B2"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 400,
            "y": 104
          }
        },
        {
          "id": "cba77f9b-e0fe-4bec-b51b-00fbeae9bf9f",
          "type": "basic.info",
          "data": {
            "info": "One pushbutton for turning the LED on and off",
            "readonly": true
          },
          "position": {
            "x": 112,
            "y": 24
          },
          "size": {
            "width": 368,
            "height": 32
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "a25ed287-31fc-4e5b-8a1b-b66dc4f2c02c",
            "port": "out"
          },
          "target": {
            "block": "ba2984df-5b7b-4376-9c6e-f78770d715b5",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {}
}