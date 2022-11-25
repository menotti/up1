# http://iverilog.icarus.com/
CC=iverilog 
FLAGS=-Wall
# http://gtkwave.sourceforge.net/
VIEWER=gtkwave
# https://github.com/yne/vcd
#VIEWER=../../../vcd/vcd < 
# https://drom.io/vcd/?github=menotti/up1/master/processor/dump.vcd
simul: *.v
	$(CC) $(FLAGS) *.v 
	vvp a.out
	$(VIEWER) dump.vcd config.gtkw
