#!/bin/bash

iverilog -g2001 -osimv -s can_ibo_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/can_ibo/can_ibo_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_can_protocol_controller/can_ibo.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_can_protocol_controller