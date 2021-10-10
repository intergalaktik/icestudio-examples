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
          "id": "4f69a0e3-3915-460c-a369-21da3b0c4565",
          "type": "basic.output",
          "data": {
            "name": "csn",
            "pins": [
              {
                "index": "0",
                "name": "oled_csn",
                "value": "N2"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 672,
            "y": 8
          }
        },
        {
          "id": "617c8288-e671-4347-955a-595dcddbc0fb",
          "type": "basic.output",
          "data": {
            "name": "clk",
            "pins": [
              {
                "index": "0",
                "name": "oled_clk",
                "value": "P4"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 672,
            "y": 80
          }
        },
        {
          "id": "61b552f4-539a-4289-b82e-ad2c098ce2f2",
          "type": "basic.output",
          "data": {
            "name": "mosi",
            "pins": [
              {
                "index": "0",
                "name": "oled_mosi",
                "value": "P3"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 672,
            "y": 152
          }
        },
        {
          "id": "f55f8ce3-cb34-479b-b54e-f3bd47834810",
          "type": "basic.output",
          "data": {
            "name": "dc",
            "pins": [
              {
                "index": "0",
                "name": "oled_dc",
                "value": "P1"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 672,
            "y": 224
          }
        },
        {
          "id": "4c613250-a7f2-422c-91d5-ab0312e6749e",
          "type": "basic.output",
          "data": {
            "name": "resn",
            "pins": [
              {
                "index": "0",
                "name": "oled_resn",
                "value": "P2"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 672,
            "y": 296
          }
        },
        {
          "id": "3c39c5c1-ced9-4a7d-a7a6-1f0d80d8f4af",
          "type": "d83717611113ab5acbe8e510c3c57050c7a1f492",
          "position": {
            "x": 408,
            "y": 88
          },
          "size": {
            "width": 96,
            "height": 224
          }
        },
        {
          "id": "d848037e-5de8-497b-8138-7ffa3603d3bd",
          "type": "basic.code",
          "data": {
            "code": "wire [7:0] color;\n\n// Color encoding\n// RRR GGG BB \nassign color = x[3] ^ y[3] ? 8'hff : 8'h00;\nassign clk_out = clk;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "x",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "y",
                  "range": "[5:0]",
                  "size": 6
                }
              ],
              "out": [
                {
                  "name": "clk_out"
                },
                {
                  "name": "color",
                  "range": "[7:0]",
                  "size": 8
                }
              ]
            }
          },
          "position": {
            "x": -240,
            "y": 88
          },
          "size": {
            "width": 480,
            "height": 224
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "d848037e-5de8-497b-8138-7ffa3603d3bd",
            "port": "color"
          },
          "target": {
            "block": "3c39c5c1-ced9-4a7d-a7a6-1f0d80d8f4af",
            "port": "2d4bb3c7-ce4a-4d88-aee8-d91c8937c961"
          },
          "size": 8
        },
        {
          "source": {
            "block": "d848037e-5de8-497b-8138-7ffa3603d3bd",
            "port": "clk_out"
          },
          "target": {
            "block": "3c39c5c1-ced9-4a7d-a7a6-1f0d80d8f4af",
            "port": "42a39cab-79cf-4d28-8660-53a2e7b51a7a"
          }
        },
        {
          "source": {
            "block": "3c39c5c1-ced9-4a7d-a7a6-1f0d80d8f4af",
            "port": "f0e4d58e-1ed0-423b-8d0f-419d1cd9bad2"
          },
          "target": {
            "block": "d848037e-5de8-497b-8138-7ffa3603d3bd",
            "port": "y"
          },
          "vertices": [
            {
              "x": 232,
              "y": 360
            }
          ],
          "size": 6
        },
        {
          "source": {
            "block": "3c39c5c1-ced9-4a7d-a7a6-1f0d80d8f4af",
            "port": "f04b0e21-7dc2-405f-8ac9-d9e8b7e40977"
          },
          "target": {
            "block": "d848037e-5de8-497b-8138-7ffa3603d3bd",
            "port": "x"
          },
          "vertices": [
            {
              "x": 224,
              "y": 400
            }
          ],
          "size": 8
        },
        {
          "source": {
            "block": "3c39c5c1-ced9-4a7d-a7a6-1f0d80d8f4af",
            "port": "a08d590c-a9ae-4934-b5dc-9e571ec39f61"
          },
          "target": {
            "block": "4f69a0e3-3915-460c-a369-21da3b0c4565",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "3c39c5c1-ced9-4a7d-a7a6-1f0d80d8f4af",
            "port": "fac6e2bf-a74a-4710-b1f9-1fae689c79a7"
          },
          "target": {
            "block": "617c8288-e671-4347-955a-595dcddbc0fb",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "3c39c5c1-ced9-4a7d-a7a6-1f0d80d8f4af",
            "port": "86ab7933-7b3a-4445-b966-ea91f78742f2"
          },
          "target": {
            "block": "61b552f4-539a-4289-b82e-ad2c098ce2f2",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "3c39c5c1-ced9-4a7d-a7a6-1f0d80d8f4af",
            "port": "b0005dde-f564-4b25-86ea-5e3fb8c0a43d"
          },
          "target": {
            "block": "f55f8ce3-cb34-479b-b54e-f3bd47834810",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "3c39c5c1-ced9-4a7d-a7a6-1f0d80d8f4af",
            "port": "acceb6ee-5b11-4866-9768-5a0ebe9d1e72"
          },
          "target": {
            "block": "4c613250-a7f2-422c-91d5-ab0312e6749e",
            "port": "in"
          },
          "vertices": [
            {
              "x": 632,
              "y": 288
            }
          ]
        }
      ]
    }
  },
  "dependencies": {
    "d83717611113ab5acbe8e510c3c57050c7a1f492": {
      "package": {
        "name": "OLED screen 128x64 - i2c",
        "version": "1.0",
        "description": "OLED i2c screen 128x64",
        "author": "Carlos Venegas Arrabe (cavearr)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22209%22%20height=%22209%22%20viewBox=%220%200%2055.297916%2055.297916%22%3E%3Cimage%20y=%2297.75%22%20x=%22-148.601%22%20xlink:href=%22data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUSEhMWFRUXFxgXFhcYGBUWGBUXFRUWFxUV%20FRYYHSggGBolGxgVITEhJSkrLi4uGCAzODMtNygtLisBCgoKDg0OGxAQGi8lICUtLS0tLS0tLS0t%20LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIANEA0QMBEQACEQED%20EQH/xAAcAAABBQEBAQAAAAAAAAAAAAAAAQIDBgcEBQj/xABQEAACAQIDBAYECAoHBQkAAAABAgMA%20EQQSIQUGMVEHE0FhcZEUIlKBIzJCkqGxwdEkYnJzk7KzwtLwFTM0Q1NUghZVg9PhJTVEY3Sio+Lx%20/8QAGgEBAAMBAQEAAAAAAAAAAAAAAAEDBAIFBv/EADYRAAIBAwMACQMCBQQDAAAAAAABAgMEERIh%20MQUTIjJBUWFxgRRCkVKxFTNiofBjwdHhNENT/9oADAMBAAIRAxEAPwC6b/75NAxw2HbK4AaWWwbq%20w3xURTxkI114D6NtrbdZu+DHdXHVrC5M2TaGKxEgjhfESSNwBmkJPMmxAUV6c6VGlHMkvwebTqVq%20ssRb/JYtm7h46VS3pWX/AFSFTzs1xmtwuNKxSvKS4h+xsVpVxvMWbcHaCmwndvAm30vT62l+hE/S%20VP1s8rGbt4+I6mZ9Pi5nQnTSxuQdey+vCuo3VGXMUjmVtVXEmzwDjJe15R4u44GxB1516MKVKayk%20jz5zrQeG2MfFyf4knz2++u/p6fkc9fU8yMzN7b/Pap6mHkOun5kmCgkmkWKLrGdjoAzdnEk9gHOq%20q3VUo5kW0utqSwi1z9G+0FXOJEkI4xrIwa3ia89XtJvg3fSVEuSnz50JVy6spKsCxurKbEH+e2vQ%20gqU46kYJurF6WevsTdnG4sBobqpFwXcjMOYFZKtzRg8JGulb1ZLdnJtjZGJwriOdZFPYwYlWOp0P%20YbdndVlCrRqFdanVpkex9mz4mTqoS5a1yS5CoObH7OJruvOlSW5zRjVqvZnvYvcbHRIX6wSWGqJI%20wbXl39xtescbuk3ho1StqiWUyrekN7cnzm7OP03r0FClp1GByqp4zuevDsDElA5kMd+ClnZvFrDT%20w1rHK4p5wkbI0J4zJnFj4ZYWCyMwuLqwkJV7aG3aDf5JAIvWihKlU8DPWjVpvnY5xOfbf5xrT1MP%20IzupPzDrT7T/ADjTqYeQ6yfmOXFMOEjj/WwqJUafiiVUqeDPf2HsDG4kjI8i3AbVnJyk6MRcBQe8%20151W6oReFHJvp21aS3lg9+fo82gov6Szfklr++7VT9bT/Qiz6Op+t/58nBjdz8dGpZppAAL3Ikt7%208pJHlXSvKX6F/YO0qfrZX8RPicO653lUmxRllYhhzRga20uprLZL8GOqq9J8s0fcbpDEjLhsW3rt%20pHKbDMexJLaZuTDQ8gePn3dk6fajwbrW86zsz5NIrzjeYT0h/wBrxFu2bXxEMI+1vOve6P7i/wA8%20TxL99vH+cFs6INkKMO85+NK5S/aETsHK9ef0hVcqunwRvsqajTz5mkqLaCsJsFoBsiAggi4PEUBj%20XShs1I5yy/3iZz+XHII2P+pWW/eK9To2o1LSedfwWnUUI17Z5CEoSXDo6xECeldaGJMaWK8cqsxY%20DUHjkJt2CvH6STcl5HqWDWllgl2iHZVaPqwz2LKSjFCpDDrb3LNa/DQmvMPQKdvg0PpUuUHqw8YI%20uMxCx/C2PtWye+t9rq6t48jFc6daz5l8wG2VVwkEJkBRMmResyRi5BfQAMRbXUXFqwSi8ZNiks4P%20K3glibCO7iQzGRQil7qjCU5BbiLagjlerKTetHFTuM5dxsWkeFksBm66zHW9iiCO1gSRfPb31deR%20fW7lVq11Z6+O2jeaIMhTMxBBIBIAQFVPG446+0KzRTwzQ2sooG1Z4/SmcWZPSGOvArnS5PdnzVuh%20q+nZjnp65GmYLaDqr5Ys5IU3XKwup1iAe1yQwN6wSNqKZvdPFJDDp6+bNpbTKr9YD4eqPdWy21Ko%20sGW4w4MqAr3UzxmLXQPc3N2ek+LijfVSxZhzWNS7DvvYV5/SFRxhhGyygpT3N/2Zh0SMZBYN657y%202uvnb3V4B7R10AUBRukTYkbYSYBQMqGdLaZZEK5rcgwbUd1aLao4VEyivBSg0YxktfmB9INfRVN4%20HgweJH0T6S1fLYPpMmO9ILfhc+n98/0RQ17vR38v/PNniX/8z/PQ9vox3qWJHw0hAN88dyAGNvWj%20v2E9lYukLdxnrXDNtlWThofgafgNswy/EcZu1Dow7iprz8G7J31BJw7W2tDh0LyuFA4DtPcBxNFu%20MmIb5bf9IcsPikZUvpdTIZHfwLZVHMITXs9H0GnqZ5V7VTWlFWJr1jzcBehOC2bL3Vnuk0Eqi8Cz%20I2U2LSv1Xo5B0JLaHzryLi7hJOM475x/2elQtpxalF+H+I9HEbsHOzJicPljEnpMyxsGgaIjOBGW%20JfjYN3GvPSXk9+PU2tvzW3JWp9iMcWuEikSQsyhHBurCQZs7HnbUjutXrUqkIUHNo8ypCU62lMt+%20yN0MRErywYkTRBPgwoeNmIkKuoa+ZQpUkWvmFeVVqQm91g9KnCcFzkZvRufMma+MWSXJJMsRRkvH%20GLOym5GcKwGvYTarLWrCMk3HY4uKcpRwmeTu9siaPCnGx4hEzh1WNlLLKIyLo7cFctqg0a/A8a03%20lWEqmhrjxM9rTnGGtPnwLBtPY00oKrPAJIQzYhVDFkcQ5gEz/GBX1c3ZWCOE8tPD4NssvZPgoW72%20yTi50gUhMwY6gsAqqWICjVja+nEmvbrSjRpZweRSjKrUxkuGyt25USRI9ooFZ1gi9RjnZ4y4R9c0%20Mlrrz4d1eNNxk8qJ60E0sNlbx+72ITCemytmLStCwNyVCEi4N/il1Yd5ArfaypqrpXkYriNR09T8%20zwa9U80KnIPR3f2qcNPHMBfI17e0pBV18SpPlWO8o9ZDY1WtRQnlmzbmb4QzRLG8iq6+qpYgCRR8%20UqT22tcV8/KLTPajJNFuRwRcEEd2tcnQ2aZUBZ2CgcSSAPM0Bl/SBvdG6vDEcwdcl/xMwaRyOy+V%20VXncmtVtRdSaM1xWUIszUtfOeYY/9K+gmsRweFDvG+dafZNfMYPpDPd993p5cVMy9WLyMwzSKpIK%20RAGx/JNbra+hRjpkn8IwXNnOrPUmisTboYof4J8JovtIrQ+lKMtmn+CtWFSO6aJYtgbQHCVB44iI%20/aayuvav7X+DQqddeKJf6K2oP/ED3YmP+KuVVtH9r/DJ0XC8Ucz7IxjN6+WRvaeVGH15T771ZGrb%20LdJ/g5dOu+WhH3XxRNy0BJ1v18Wv/urRHpOilhJ/gzuxqN5bX5E/2UxHtQfp4vvqf4rS8n+CP4fP%20zQh3UxHtQfp4vvp/FKXk/wAE/QT80WXAYrGRYOLCqIs0WIEwY4iDKUVs6pYNf49/dWCpWoTqubzh%20ry8TXCnVjTUVjb18D0sRjrZ0XCxdViBJ6TlxMBmLSm/qSEiyqb2GvHstVUaifi9uNi1xxwlvzuV+%20VJ48cuMhggRY2XJEs0OqquSzFW1Yi5JtxNao3NOVF05N5foZ3RmqqnFLBcm3ql6pVhjVCpQgy4qA%20nKsl2Q2J0K3UHwrD2c75/BrzLG37nLvDvA8wJjw0Qm6uWJJTioSqJLYMbBhdrAaGu6coLlvHsczU%20nwln3PF2DinwmHMawRmbK65hiYTDJmIKyTxltWTgCLaVdVqQqz1ZePYqpQlThjCz7ntptazGT0XD%205p1b0l1xUJclowgWNm+KNL2qhzXGXtxsXKL5wt+dysYPY6RYgSRxKYQhUrJi4OtDG/rxOlgrjS1+%20+tU73rKemWc+37meNsoVNUePcszbxuwJOERmjdJIS2JhDO6RFFeY3GdtT9HKsvZXj77GjfyPAx+3%20cTPA+EOGAiMSqPhIRlnD53mzX4Ek6XrRTdOElNS3T8vApnrnFxa2x/crkm62JC3vCe4Twk/rfbW5%20dJ0m+H+DG7GfoQLu/ibXyKPGWAfv12+kKXr+Dn6KoOTdzEHiI1/KmgHl69RLpGkvP8EqyqegLu7i%20VN1aIHn6RB/HWepc20+U/wAMuhRrx4f9yR9m45CLSrzuk0Fr+5uNVqdrLwZY43C8Uc2JGM+Uzn/U%20j+FiCa6TtTl/UEeH2XO1/V46ktJEtz3lm1rTC8oQWF+xnlbVZ8noQbvTkPfqxZGP9dDcgKSStm14%20Ul0hSeyz+CFY1E87Gy5DyNePlHq4Mm6UpSMbiDYXDoAe7Jr9X0VdTXZKpvtGfvi2513kjSMOLbn9%20Vc5OsDlxz+0RU5RGBf6Qf2jU5QwxG2hJ7ZplDDGttCQ/LbzplEYYxsY/tHzplEaWJ6Y3tHzNMonS%20wGLb2j5mmpDSxTjnPF28zTKJwxnpLe0fM01IjSHpDe0fM01IaWO9Lf2m8zTUhpYelN7R8zTKJwIc%20U3M+ZqMoYD0o8z50yhhielHmfOpyhpYnpbe0fOoyhpHelnmfM01IaRDP30yhgOuPM1OUMDlxJ5nz%20NRlE4EM55mmURgRZzzqcojSWDYrXsTf+rn/UJ8qnw+Ucvn4PoC1ZjQZF0qj8NxJHDOvnk/6VbT7p%20VPvGeSmonhI7jycck1tNapyWjPSB31GQJ6QO+pyQHXjvpkYDrx31OpEYEM/jUZJwAm8aJoC9cO+p%201IjDG9b41GonAvXeNMobidb40bACbxomgBl8aZQE62mQHW0yA62mSRRKO+pyiMB1o76akMCdb41G%20QKJfGpyhuKZR30yhuKsl6gk6YTV1NlU0WbYz2XU6COf6U/8Ayrkuy/dFMn2l8n0J6R+KPKshoMd6%20WJfw3E39tP1D91WweII4ksyM4ka9VSlllsVg48TxrlkkNQAoAoAoAoAoAoAoAoAoAoAoAoAoAoAo%20AoAoAoAoCSGpQOiNrGuk8ENZLNsv+rB43SYeS1qpyTi/dGWpHEl8n0DZuVZcGgyDpajYYzEkm4Mq%20keAQ6Hw4e6u//WQu+Z41Vlhx4jjUMEVQAoAoAoAoAoAoAoAoAoAoAoAoAoAoAoAoAoAoAoCSKpQJ%20lqQWvY7EQxgdq4jhx+LarqWMP3RRV5Xszedef8+dVlhlXSyoGKnAv/WC/cSGOnnf31K7hH3GbGuC%20w5MRxqGCKoAUAUAUAUAUAUAUAUAUAUAUAUAUAUAUAUAUAUAUBJDUoEoqQW7YQHVxH8XEX+YKsp8P%203RVU7yN06xOZ865OjKulaS+LxH50DyUiul3ER9zM5aqyw5cRxqAR0AUAAUBLLhnUXZGUcypA+mun%20FrlHKnF8MYsTEFgpIHE2Nh4nsqEnjJOUngI4yxsoJPIC58hUJZ4DaW7JWwMoFzG4HacrfdXWiXkz%20nrIeaEjwcjC6xuQeBCkg++1FCT4QdSK2bRFIhU2YEEcQRY+VctNbM6TT3QRRsxsoLHkASfIUSb4D%20aW7JJcI6i7IyjmVIHmRUuElyiFOL4ZGkTEEgEgcSATbx5VCTfBLaQyoJCgFAoB0kZU2YEHkRY1LT%20XJCafAyoJCgCgCgJYqkEoqQW3Yp+Dj/JxP6gq2lw/gpqcr5Ns931VwWGX9KrE43E349avDkEIHvt%20auvsRx97M8kqstOXEVDBHegC1AXDcmFI8PisayLI0QAVGAKgkg5tRoRW60ilGVR+B5HSM5Sq07dP%20Cly0dG6G8EuJxBw+JtMk2Y+uA3VtlJDICLDtFu+uravKpPTLfJxf2sKFHraXZccceK8mTYXDCLZ2%200YgbhJst+YDIK7jHTRqL3K6lTrLyhLzjk8jo1P8A2hF4P+o1ZrL+ajX0v/4kvj9zq25DtHPMetfq%20rvp162ya6Zc/LstVtWFfLa49zi2laaYrSs7fa+ffB17Wx8sWysCYpHjJLA5WKki7aG1dTk420XFl%20NCnCpfVlNJ8ckO1pfTNm+lyKomilyMyqoMuiC7m1+B+iuaj62hrfKO6K+mvOpi+zJZx5exB0Wf27%20/hP+7XFj/M+Dvpr/AMV+6Jd2d4Jnxfo856+KV8pSX1wpBNmXNfhyqynWk6zhLdNs4u7WEbfrafZl%20FZyts+jJ8Lsxok2pHHMVSMAEZVPWCz6E/J7eHOu1ScOsSe3/AEVzuI1JW8pR3lxvxx+Tlwe6EXo8%20M80slpdbxoHSO4uof5V+dgaqhaR0KUnz5F0+kZ9dKlCKyvN4b9vA5Ni7sxTRYmRp7CAizAHKw111%20Fxw5dtc0raMlJt8FtxfSpTpwUN5eHiv9huK2CIzh8TA5kw7ugzEWZXzC6MvPQ8L8Kh0NLjOLysr9%20yad3r10qixNJ7enmj2N8sFHLtN1ll6terU6KzMxyaKgAOvjarrimp1sSeNjJ0dVnCyThHLy/Rc+J%20yf7Iw2w8vXSJDMxQ9YlpFb1gnqi4sSB51z9JHZ5aT8+S3+I1MzhpTlFZ2exx4LdJmxkmHkLJHEGZ%2030JVLEo1r6304c6rjaN1XB8FtTpGMbeNWO7eEl6+KK7iVUOwU5lDEKeFwDofKsskk2kehFtxTfJH%20XJ0PiFSCZakFr2N/Vx+GJ/ZirocP3RTU5RuHWv3eVVnZlnSov4Ziu34Ye71D9/0V39iOV32Z9JVR%20acmIqGCKoAtSCw7q7bjhWWDEBmgmADBbXDXFmvxsBfQVpt6ygnGXDMF7ayquNSntKPGf2O/ZM2Bw%20TtOsxxDgkQhFZcgKn13zAAnst31bTdGi9SefIz14XN1FU3HSvuy+fRYF2NteJ8Hiop51jlnkzXZX%20IPxST6intBqaVaMqclJ4bIuLapG4pTpxzGKx4f7ke7Jw+FxUczYqN1GYNlWUZboQDqovrYaVzQUK%20c1JyR3eqrcUJU1Tafq15+5wbVwMDPLKuMiOYu4XJNc3JIW+S1+yq6sIOTkpo0UatWMYxdN+C5X/J%206eKxOHnwGFgOJSN4sxYMsh4k2AyqaucoToRg5YZkhTq0rupVUG1LGMNf7s5tubXgTDDBYQsyZs0s%20hGkpsLFb6rqOQ4VxVqwjT6un8stt7erKt9RWSTxhLyIdwtpRQYrrJmyLkYXsTqbW0AJrmzqRhUzJ%20+B10pQnWt3CmsvKOzZD4LDSnEyT9ewa8aRK6kEk+sS4Uacr9tWxdKnN1HLPlgqrq5r0+pjHSsbtt%20fjbIuyt4UMO0DM9pZwMgyn1jZh8kWHEUp3CcZuT3ZFezl1tDq12Y8+h07obSw+HWN/THQ3tJA6sU%20sR6xTKCLk2sdO29dW1SnCKbl8FfSNCrWbiqSflJPfPqdewp4pcPtJ7FIndToFBRTe1hw0q2jOMlU%20fCf/AAU3NOpTq28eZJP5PJx+2IEgw+DhbrESRZHlsQL5rkKDrYXPEdgrPKtCEY04vKTzn5NlK2qT%20qzuJrDawl6ep60m8uF/pGWbPdHhCJLlPwb5ePDMOVxzq36in12rPhyZFY1/o408bqWWs8ry8jk3h%202xC+DSFMUXlicPnYPmkJFzka2mUtbW3xa5r1YOnpjLdFtpbVIXDqSp4jJYwsbe/v6HTtzaGXAriM%20uTEYlVjkOZg2SPQMB3hdT+Ma6q1MUtfi9ji2o6rp0s5hB5Wyxl/8ZM9ryz3goB8VSgTJUgtexBeN%20Ba/q4n9kDV0H2X8FM+8vk3HL/NxVZ2Zf0rr+FYjvlB7/AIrV19iIXeM6kqssOSeoYIagBQC3oAoA%20vQBegEoBb0AlAFAFAFAFAd2E2vLHFJCjWSW2cWU3tw1IuPdVkasoxcVwymdvTnOM5LePBw1WXC3o%20B0chUhhxBBFwCNNdQdDUp4eSGsndtjbU2JKmZgxQZVsqrYcrKBVlStOpjUU0LanQTUFjPz+551VF%204UBJFUoE0dSC47sLdYxe2mJ1HLql++rYvsv4Kp95fJr2euDozjpUe+LxNxb4YD3AMBXX2I5XfZnz%201WWnJiKhghqAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFASRVKBOlSC17vuVjQjliB5xKD9B%20q6HD+CmfK+TYLGuDoznpT/teJ/PfY1T9iIXeZQGOlVlpyYioYIagBQBQBQBQBQBQBQBQBQBQBQBQ%20BQBQBQBQBQBQBQEkVSgTrUgtGwT8Gn/H8+rSrYcP4KZ8o2jIf5vXOfQ6wZr0pW9LxI7eu194ap+x%20ELvMz96rLTknqGCGoAUAUAUAUAUAUAUAUAUAUAUAUAUAUAUAUAUAUAUBJHUoE61ILLsQ/Bp4z/s0%20q6nw/gpqcr5NlvXB0Zv0nvfF4o/+fbyDA/VXX2Ihd9lDY1UWkLLegGGIVGAJ1YpgCdWKYAZBTADq%20xUgOrFMIgTIKYQDIKbEhkFMIgXqxTCAmQU2AZBTYkMgpsAyCmwDIKYQDIKYRAZBUEhkFMAMgqcAM%20gqMAcq1IHrQFm2K1ol8Z/pjjq+nw/goq8o2LrF9keR++qywzjpAgZsVi7An8Ic6a/Kk4+ddpZgiv%20OJMpj4KT2G+aa5cGWKaIThX9hvI1wdDDA3ap8jUZJAQN7LeRqckYDqW9k+RrqO5y9hxwrcj5GutB%20GsYcK3snyqHBk60NMDeyfKuMHWROobkagCjDv7JoA9Hb2TQkPR39k0yQHo7eyaEi+jP7JoBDh29k%200IDqG5fVQkUYZz8k1OMkZHDBP7JrvQzjWh3oL+ya60Ea0NbDMOz6q4lsdJ5GdS3L6RXOTrAdS3L6%20RUAcMM3L6qnAySR4Rz2VYqUn4FbqRXiWPY8BEYvxHXG2nAxrqe7Q+VdqOn+xw5KTNc6luRqktM66%20Q8I64ydwdGlc3BPYxB8iLVOGlsMpspssr9rN7yTXOWdJIhaoJI7UBJEKgEhQsVUcWYAeJNhREDcV%20J65CCygkDt0BtcntJ411ljCImkJ7aZYwhDIf5tUEiZ/DyFAKspHD6hQAZT/IFRgAsp/kUwBRKe23%20kKYAwyH+RQCFvDyoBPcPKpA7PTIwHWGpyyMIUS9w+n76jLGDtBUqHAsblWGpAIsQRfsI+o1DyyeC%20KZAeyoBAFqQSqxqSCZJW7CR7661PzI0ryPW2U7lrkk2DHUnsU/ZUxy2snMsJbGy6+0aYQyULfaUj%20ES24Gae44g/CV6dCnGUEn5I8+vUlGexVJUU/J8q5laR8DqN1LxOWSFO8VnlbNF8bg5zhyQSAbXt5%20VmlBrk0KaYwJauDo6Nnp8NF3MDbw1H1UB599KEglADjtoBpFAJQCEUAUAUAlAIaAWgAUAUAWoD0M%20Mg6on8dfpVr/AFCoYIpagEVSCZEvU4IydmGwRau4wbOZTSPf2ZkjBUes7K4uOCjIb+JrZC3aWpmS%20ddN4RqelZNjVuZ5vofwh/wA9iP2pr1bXur2R5lx3vyV1xWmSKEQkVVgsydGFtqh4Hh41TWpakW0q%20uGefiksSBXkTWJHqReUQRMVYOLXBuK5JOeTt0I5VOUBoGh7qAWRCpseQPMWIuCCKkEZFAFAFAHCg%20ENAKBegE7jQDSLUAWoBxQ2udKAdEl+JFv55VAOvMAgUcblibW7AAL9th9ZoCK96gHbg9nlu4dpPA%20d5q2MG2VymkdSxgaLr3n7BW+la+ZiqXPkSAE6En+e6tapaV2UZnU1PdndsxbP7n/AFGruouwcQfb%20Nc6puR8jXiZPYM630UnESfnp/wBpXq2i7K9keZdPtfkrbKa0MoTQ3JXOknUOUWNS47BSOl8PmF7V%205tWnhm+jUyjmXBHMLCssobGpSO+SKQWJHLs+isjpl+o6c+VRaNTmXUsp0NyDbUd3nWWbw8Fi4Kvt%20hruLgKci6DQcTWyn3SqXJ5rCxsasIEI7aAcFvQCd1AJa1AOK9ooBxQMO+gI1WgFy5eygLZBOx9Uh%20CgUWUqNBkuAvKxt41kqd8sjweViYSzXCAeAtWqMdipsRcC3KrNBxqO7D7MC2aQ5R5/RV1Og5MqnW%20UeR08mbRfVQcB2nvavRpUFEwVazkNVK0pYM7ZIBXZwdmzk9cAcm/Uaq63cZ3R76NizHnXz57pTd4%20t4oVlcNs/DuRLMpZi9zkktmNjxPE16NC2lKO02tkYK1eKlvHJ4p3nw3+7ML5y/xVc7Wf62VqvD9C%20I23sw3+7MJ5y/wAVV9S1zUZ31if2DW3sw3+7MJ/838VOq/1GT1n9CHw74wDRdnYXzm+1qj6fV97J%206/H2DzvhHx/o7DfOmH71Q7F/qJ+rX6RJN9lIt6BhvOb+Kq3Yv9R0rteRLhZ48TEzoxhKqXkhQlkU%20ZiPVV2ubi2vDXsryLi3lCo88G+lVUo+pQNuShpLgsfVX41r8O6rKaxHCEuTzsw7asIDNrqKAUuBw%20FAKXHZxoBFcdooBhagAtQAXoBQ9AWjCzhEzyNe4GSP2iF0DEWIXnY3rN1cqlTEV7s6c1COWelh95%20gAAcFhTbmJv+ZXsQs9uTz5XPodcW9ajjgMIfdN/zKs+if6mcfVf0hJvdGTdtn4P5sv8AHU/TafvZ%20HX5+1Dk3wgHDZuC+bIf3qdUv/o/yOs/oRIu+cF/+7cF82T+Kp6n/AFGOt/oRMu+MR1/o3B/Nf767%20VrJ/ezh3EV9iJf8AbBCGC7PwanK9mCNceqeGtQ7N43mwrlZ2gjSeqXv+ivKPSyZTvUvw8v8A6jE/%20ta92zXYXsjxrrvP3Z2bj7n+l5ppATEpyIvDrZORPYg4nwrJfXLi9ETVaUE1qka/sfc3CwrYxq7dp%20IGUdyrwA+mvKbbPRUUhMRuPgXYsYbE+yzAe4XsKZYwiu7y9G2HMZaFCcoJKaZyOJMb2vm7jcHhXU%20akovJzKCaMex+z2hkaNtQLFW4Zla9j46EeIr3LWt1kd+TybinolscjqK0SRSme5u3sph8O2iujol%20jq2b1GNuxfjDXtHdXzfS95CC6pd49iwoSfbfBUt5oyMQwIIsEFibkDILa1nt5J000aprEjy8tXnA%209VoBMtAGSoA2wqQIaAS9ANqAOFAXd9hl8LHOp1SMllPaBqcp5jWs1tfqlcOlNbN7E17dzp6l4HmR%20CvrIHgzOiPDs7LGguzsFUd7GwpWmqcNTFKLnLBqu4fRxCymXELmW5Cg8XtozN7K3uABrpcmvBq1p%20TZ7FOlGKL3it0cE4ynDoLcCoynzFVZZZhHmYno5wZHqB0PMNmHgVbQip1MjSjNd9NzvR87ooV0Gd%20wt8ksRNusQHVGBtdeGtxW61uXGWHwZLigpRyuSpRLx/Jb9U17M+7k8mPeN29Gbl9dfNHv4Mw6QIM%20mKlA/wAaVvnlH/er27B5h8HkXscT+S/dF2JX0OCxAyyyow/GcXXz+2vKvE1Wlk9K1adJYNBrKaQo%20AoD5/wB92QzMV1ADa8w85ZL/AOkNXp9H51Hn3uMHiYTd3Gzx9bFh2aMmwclVDW5FiLirLzpKlbrM%203t8lNCynU4LnsXYzx4eNJVCuFNxdWsS7Eai44EV8J0jexr3DnDg+jtaLp01Fmc75xD0uXgLZBa/K%20NdffXs2DzQizPW77PBWIcxWwqGtCOdAHV94oAKDnQEBSgGlakCVAEtQCgUBsWzNnySYAKgzM8FlG%20guzJYDWwAr5mrWjG6zLhS/ZnoKOaWPQrL7rY6JC7YZiqi7FSr5QO0hSSB319nZ9MUK70wf8AZo+f%20r2E4rLOjdSQDFQPyfTuYqwTya1br7tUsoz2e1TDPoDdmbNhouIIXKwPEMnqtfvuK8Rnro9SoJCgK%20P0kYlFsCBm9HxGYm4+DKBbd93K6d1WU1lnE3hGLYPSw7j+qa+jn/ACj59LNQ+g/6PPfXzWo+hwZ/%200v7DkWX0pVvE4UOR8hwMuvcwCa81r1Ojq0V2Gedf0m3rXBS9gbefCs1vWje2dOFyNVZT2MOw1qur%20WNXdcme3uHT2fBoOyek9VW0rBuV1ZW8CRcHxrypWdVeB6Mbum/E9IdKmF9k28f8A61z9JV/SdfVU%20vM8fb/SgHUph7LfS/dbtYjT3Amu4WVR8rBxO7gltuVXdnZD7Sxaxkkxg5534XXhlv2XtlA7NTzrZ%20UatqWFyzJTTuKmXwjfYYFVAiqAigKFA0AAsABytXjvfk9ZbFZ2zsGQveFQVI4XAsb6jU18/ddFz6%20zNJdl/2NlK4SjiRle9PRZtCXENLHGjBrf3iqRYAWIJr1bSM6dJRkt0UVWpSyjyF6HtqH+6jHjKn2%20Vp1PyK8EZ6Itq/4CfpU++p1egGHol2r/AJZf0sf30z6AQ9E21f8ALD9JH99Q5+gwIeibav8Alh+k%20T76a/RjAw9FW1f8AKn9JF/FTX6DA1uivav8AlT8+L+Kp1egwMPRdtX/KN86P+KpyBF6MdqEgeiOL%209pKWHiQ2lRKWAlk2PdjYEsawwujLkUIzWNvVWxINfNuyq1rh6otJt7m51YxhszQIYFQZVFhX0VOn%20GnHTBYRhbbeWYT0kbt+h4rrI1ywS+sluCN8pRysdR3Hur27SqqkNEjyLqm6c9cTo3c39kgb1nHrf%20HDAsrEfKGU3VudZ6tjJPsbo0UryLXa2LenSrh+1R3WZtfcV0qj6Sr5F31VPzEn6VsPl9Vde8sfoC%2060VpVfgHdU/Mzfefed8WxJb1Sbm+hIBuqgfJUfTXoW1ooPVMw3F1qWmJ09H+wGxmKAAPVoQ0rclB%20vkH4zWt4XNW3lwoQwuWcWtBzll8I+g68E9k83eX+yT/mn/VNdQ7yOZd1nz/NXqHnkdAIakB20Hia%20j0N/1eJ/KT9VqxXXKNVvwzRqymgKAKAKAKAKAKAKAKAKAKAKAKAKAoPTB/Zovzv7prTa95+xRcd0%20yKtxhHdnvoT4EbfYaEEVckG1dEX9jb8636q1huP5jPQodwvFUFx//9k=%22%20preserveAspectRatio=%22none%22%20height=%2255.298%22%20width=%2255.298%22%20transform=%22translate(148.601%20-97.75)%22/%3E%3C/svg%3E",
        "otid": 1594131633664
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "a08d590c-a9ae-4934-b5dc-9e571ec39f61",
              "type": "basic.output",
              "data": {
                "name": "oled_csn",
                "pins": [
                  {
                    "index": "0",
                    "name": "NULL",
                    "value": "NULL"
                  }
                ],
                "virtual": false
              },
              "position": {
                "x": 296,
                "y": 2752
              }
            },
            {
              "id": "fac6e2bf-a74a-4710-b1f9-1fae689c79a7",
              "type": "basic.output",
              "data": {
                "name": "oled_clk",
                "pins": [
                  {
                    "index": "0",
                    "name": "NULL",
                    "value": "NULL"
                  }
                ],
                "virtual": false
              },
              "position": {
                "x": 296,
                "y": 2816
              }
            },
            {
              "id": "42a39cab-79cf-4d28-8660-53a2e7b51a7a",
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
                "clock": false
              },
              "position": {
                "x": -704,
                "y": 2832
              }
            },
            {
              "id": "86ab7933-7b3a-4445-b966-ea91f78742f2",
              "type": "basic.output",
              "data": {
                "name": "oled_mosi",
                "pins": [
                  {
                    "index": "0",
                    "name": "NULL",
                    "value": "NULL"
                  }
                ],
                "virtual": false
              },
              "position": {
                "x": 296,
                "y": 2880
              }
            },
            {
              "id": "b0005dde-f564-4b25-86ea-5e3fb8c0a43d",
              "type": "basic.output",
              "data": {
                "name": "oled_dc",
                "pins": [
                  {
                    "index": "0",
                    "name": "NULL",
                    "value": "NULL"
                  }
                ],
                "virtual": false
              },
              "position": {
                "x": 296,
                "y": 2944
              }
            },
            {
              "id": "acceb6ee-5b11-4866-9768-5a0ebe9d1e72",
              "type": "basic.output",
              "data": {
                "name": "oled_resn",
                "pins": [
                  {
                    "index": "0",
                    "name": "NULL",
                    "value": "NULL"
                  }
                ],
                "virtual": false
              },
              "position": {
                "x": 296,
                "y": 3000
              }
            },
            {
              "id": "2d4bb3c7-ce4a-4d88-aee8-d91c8937c961",
              "type": "basic.input",
              "data": {
                "name": "color",
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
                "x": -712,
                "y": 3048
              }
            },
            {
              "id": "f04b0e21-7dc2-405f-8ac9-d9e8b7e40977",
              "type": "basic.output",
              "data": {
                "name": "x",
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
                "virtual": false
              },
              "position": {
                "x": 296,
                "y": 3064
              }
            },
            {
              "id": "f0e4d58e-1ed0-423b-8d0f-419d1cd9bad2",
              "type": "basic.output",
              "data": {
                "name": "y",
                "range": "[5:0]",
                "pins": [
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
                "virtual": false
              },
              "position": {
                "x": 296,
                "y": 3128
              }
            },
            {
              "id": "e655e285-70e0-49ce-a06e-4041e5c0832e",
              "type": "basic.code",
              "data": {
                "code": "wire [7:0] init_block[0:43];\nreg [7:0] x;\nreg [5:0] y;\n\n// NOP\nassign init_block[00] = 8'hBC;\n// Set display off\nassign init_block[01] = 8'hAE;\n// Set data format\nassign init_block[02] = 8'hA0; assign init_block[03] = 8'b00100010;\n// Set display start line\nassign init_block[04] = 8'hA1; assign init_block[05] = 8'h00;\n// Set display offset\nassign init_block[06] = 8'hA2; assign init_block[07] = 8'h00;\n// Set display mode normal\nassign init_block[08] = 8'hA4;\n// Set multiplex ratio\nassign init_block[09] = 8'hA8; assign init_block[10] = 8'b00111111;\n// Set master configuration\nassign init_block[11] = 8'hAD; assign init_block[12] = 8'b10001110;\n// Set power save mode\nassign init_block[13] = 8'hB0; assign init_block[14] = 8'h00;\n// Phase 1/2 period adjustment\nassign init_block[15] = 8'hB1; assign init_block[16] = 8'h74;\n// Set display clock divider\nassign init_block[17] = 8'hF0; assign init_block[18] = 8'hF0;\n// Set precharge A\nassign init_block[19] = 8'h8A; assign init_block[20] = 8'h64;\n// Set precharge B\nassign init_block[21] = 8'h8B; assign init_block[22] = 8'h78;\n// Set precharge C\nassign init_block[23] = 8'h8C; assign init_block[24] = 8'h64;\n// Set precharge voltage\nassign init_block[25] = 8'hBB; assign init_block[26] = 8'h31;\n// Set contrast A\nassign init_block[27] = 8'h81; assign init_block[28] = 8'hFF;\n// Set contrast B\nassign init_block[29] = 8'h82; assign init_block[30] = 8'hFF;\n// Set contrast C\nassign init_block[31] = 8'h83; assign init_block[32] = 8'hFF;\n// Set Vcomh voltage\nassign init_block[33] = 8'hBE; assign init_block[34] = 8'h3E;\n// Master current control\nassign init_block[35] = 8'h87; assign init_block[36] = 8'h06;\n// Set column address\nassign init_block[37] = 8'h15; assign init_block[38] = 8'h00; assign init_block[39] = 8'h5F;\n// Set row address\nassign init_block[40] = 8'h75; assign init_block[41] = 8'h00; assign init_block[42] = 8'h3F;\n// Set display on\nassign init_block[43] = 8'hAF;\n\nlocalparam INIT_SIZE = 44;\n\nreg [1:0] reset_cnt;\nreg [22:0] counter;\nreg [9:0] init_cnt;\nreg [7:0]  data;\nreg dc;\n\nalways @(posedge clk) begin\n    counter <= counter + 1;\n    if (reset_cnt!=2'b10) \n    begin\n        reset_cnt <= reset_cnt+1;\n        init_cnt <= 10'd0;\n        data <= 8'd0;\n        dc <= 0;\n        x <= 95;\n        y <= 0;            \n    end\n    else if (init_cnt[9:4]!=INIT_SIZE) \n    begin\n        init_cnt <= init_cnt+1;\n        if (init_cnt[3:0]==4'b0000) \n        begin\n            if (dc== 0)\n                data <= init_block[init_cnt[9:4]];\n            else\n            begin\n                data <= color;\n                if (x==0) begin\n                    x <= 95; \n                    y <= y + 1;\n                end\n                else  x <= x - 1; \n            end\n        end\n        else if (init_cnt[0] == 1'b0) \n        begin\n            data[7:0] <= { data[6:0], 1'b0 };\n        end\n    end\n\n    if (init_cnt[9:4]==INIT_SIZE) begin\n        dc <= 1'b1;\n    end\n    if (init_cnt[9:4]==INIT_SIZE) begin\n        init_cnt[9:4] <= INIT_SIZE - 1;\n    end\nend\n\nassign oled_resn = ~reset_cnt[0];\nassign oled_csn = reset_cnt[0]; \nassign oled_dc = dc;\nassign oled_clk = ~init_cnt[0];\nassign oled_mosi = data[7];",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "color",
                      "range": "[7:0]",
                      "size": 8
                    }
                  ],
                  "out": [
                    {
                      "name": "oled_csn"
                    },
                    {
                      "name": "oled_clk"
                    },
                    {
                      "name": "oled_mosi"
                    },
                    {
                      "name": "oled_dc"
                    },
                    {
                      "name": "oled_resn"
                    },
                    {
                      "name": "x",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "y",
                      "range": "[5:0]",
                      "size": 6
                    }
                  ]
                }
              },
              "position": {
                "x": -552,
                "y": 2752
              },
              "size": {
                "width": 768,
                "height": 440
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "42a39cab-79cf-4d28-8660-53a2e7b51a7a",
                "port": "out"
              },
              "target": {
                "block": "e655e285-70e0-49ce-a06e-4041e5c0832e",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "2d4bb3c7-ce4a-4d88-aee8-d91c8937c961",
                "port": "out"
              },
              "target": {
                "block": "e655e285-70e0-49ce-a06e-4041e5c0832e",
                "port": "color"
              },
              "size": 8
            },
            {
              "source": {
                "block": "e655e285-70e0-49ce-a06e-4041e5c0832e",
                "port": "oled_csn"
              },
              "target": {
                "block": "a08d590c-a9ae-4934-b5dc-9e571ec39f61",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "e655e285-70e0-49ce-a06e-4041e5c0832e",
                "port": "oled_clk"
              },
              "target": {
                "block": "fac6e2bf-a74a-4710-b1f9-1fae689c79a7",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "e655e285-70e0-49ce-a06e-4041e5c0832e",
                "port": "oled_mosi"
              },
              "target": {
                "block": "86ab7933-7b3a-4445-b966-ea91f78742f2",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "e655e285-70e0-49ce-a06e-4041e5c0832e",
                "port": "oled_dc"
              },
              "target": {
                "block": "b0005dde-f564-4b25-86ea-5e3fb8c0a43d",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "e655e285-70e0-49ce-a06e-4041e5c0832e",
                "port": "oled_resn"
              },
              "target": {
                "block": "acceb6ee-5b11-4866-9768-5a0ebe9d1e72",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "e655e285-70e0-49ce-a06e-4041e5c0832e",
                "port": "x"
              },
              "target": {
                "block": "f04b0e21-7dc2-405f-8ac9-d9e8b7e40977",
                "port": "in"
              },
              "size": 8
            },
            {
              "source": {
                "block": "e655e285-70e0-49ce-a06e-4041e5c0832e",
                "port": "y"
              },
              "target": {
                "block": "f0e4d58e-1ed0-423b-8d0f-419d1cd9bad2",
                "port": "in"
              },
              "size": 6
            }
          ]
        }
      }
    }
  }
}