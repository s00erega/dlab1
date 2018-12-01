#ifneq ($(KERNELRELEASE),)
obj-m := new.o
#else
KDIR := /lib/modules/4.13.0-43-generic/build/

all:
	$(MAKE) -C $(KDIR) M=$$PWD
#endif
