#!/bin/sh

[ -f /usr/bin/cpupower ] || echo "install cpupower"; exit

performance(){
       	cpupower frequency-set --max 3800MHz
        cpupower frequency-set --min 1000MHz
       	cpupower frequency-set --governor performance
	nvidia-smi -lgc 210,1200 && nvidia-smi -lmc 400,5800
}

balanced(){
       	cpupower frequency-set --max 3300MHz
        cpupower frequency-set --min 1000MHz
       	cpupower frequency-set --governor conservative
	nvidia-smi -lgc 210,1000 && nvidia-smi -lmc 400,5800
}

powersave(){
	cpupower frequency-set --max 3000MHz
        cpupower frequency-set --min 500MHz
	cpupower frequency-set --governor conservative
	nvidia-smi -lgc 210,800 && nvidia-smi -lmc 400,820
}

case $1 in

	"performance") performance;;
	"balanced") balanced;;
	"powersave") powersave;;
	*) echo "usage: $0 [performance|balanced|powersave]";;
esac
