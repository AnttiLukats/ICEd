REM IceStorm binary have to be ..\bin and ..\share
..\bin\yosys.exe -q -p "synth_ice40 -blif top.blif" top.v
..\bin\arachne-pnr -p top.pcf top.blif -o top.txt
..\bin\icepack top.txt top.bin

