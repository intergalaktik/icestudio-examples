{
  "version": "1.2",
  "package": {
    "name": "PLL",
    "version": "0.1",
    "description": "PLL needed for VGA/GPDI output",
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
            "name": "clk_25",
            "clock": false
          },
          "position": {
            "x": 720,
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
        }
      ]
    }
  },
  "dependencies": {}
}