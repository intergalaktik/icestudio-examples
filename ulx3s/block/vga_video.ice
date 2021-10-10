{
  "version": "1.2",
  "package": {
    "name": "VGA",
    "version": "0.1",
    "description": "vga video needed for VGA/GPDI output",
    "author": "Goran Mahovlic",
    "image": ""
  },
  "design": {
    "board": "ulx3s-12f",
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
  },
  "dependencies": {}
}