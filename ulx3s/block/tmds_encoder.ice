{
  "version": "1.2",
  "package": {
    "name": "tmds",
    "version": "0.1",
    "description": "tmds needed for VGA/GPDI output",
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
  },
  "dependencies": {}
}