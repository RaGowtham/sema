obj-m := driver/adl-bmc.o \
	 driver/adl-bmc-bklight.o \
 	 driver/adl-bmc-wdt.o \
	 driver/adl-bmc-i2c.o \
 	 driver/adl-bmc-boardinfo.o \
 	 driver/adl-bmc-vm.o \
 	 driver/adl-bmc-nvmem.o \
 	 driver/adl-bmc-hwmon.o 
	 
modules:
	make -C /lib/modules/`uname -r`/build M=`pwd` $@

clean:
	make -C /lib/modules/`uname -r`/build M=`pwd` clean
