dff_tb:
	fuse -prj ./PRJ/dff_tb.prj dff_tb -o ./SIM/dff_tb
	./SIM/dff_tb -gui -tclbatch ./SCRIPTS/dff_tb.do

clean:
	rm -rf fuse.xmsgs
	rm -rf fuse.log
	rm -rf fuseRelaunch.cmd
	rm -rf isim.log
	rm -rf isim.wdb
	rm -rf isim
