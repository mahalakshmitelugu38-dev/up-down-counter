# 4-Bit Up/Down Counter – Verilog

## Description

This project implements a 4-bit synchronous Up/Down Counter using Verilog HDL.

## Features

- 4-bit counter
- Up counting
- Down counting
- Asynchronous active-high reset
- Testbench included
- Console simulation output
- Suitable for Icarus Verilog / GTKWave

## Inputs

| Signal | Width | Description |
|--------|-------|-------------|
| clk | 1 | Clock |
| reset | 1 | Active-high reset |
| up_down | 1 | 1 = Up, 0 = Down |

## Output

| Signal | Width | Description |
|--------|-------|-------------|
| count | 4 | Counter output |

## Counting Sequence

### Up Counting

0000 → 0001 → 0010 → 0011 → ... → 1111

### Down Counting

1111 → 1110 → 1101 → 1100 → ... → 0000

## Simulation

Using Icarus Verilog:

```bash
iverilog -o up_down_counter_tb up_down_counter.v tb_up_down_counter.v
vvp up_down_counter_tb