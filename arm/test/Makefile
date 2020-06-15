# Tested with linaro toolchain (gcc-linaro-7.4.1-2019.02-x86_64_arm-linux-gnueabihf)
CC = arm-linux-gnueabihf-gcc

LFLAGS = -lrt -lpthread
#LFLAGS += -mcpu=cortex-a8 -mfpu=neon-vfpv4 -mfloat-abi=hard
#LFLAGS +=  -march=armv7-a -mfpu=vfpv4 -mfloat-abi=hard -Llib

#all: rtt-sender.out rtt-responder.out rttcp-server.out rttcp-client.out tftpc.out rtt-laur.out
all: rtt-responder.out rtt-sender.out rtt-laur.out tftpc.out

rtt-sender.out: rtt-sender.o
	$(CC) -o rtt-sender.out rtt-sender.o $(LFLAGS) 
rtt-sender.o: rtt-sender.c
	$(CC) -c -o rtt-sender.o rtt-sender.c $(CFLAGS) $(LIBCFLAGS)
rtt-responder.out: rtt-responder.o
	$(CC) -o rtt-responder.out rtt-responder.o $(LFLAGS)
rtt-responder.o: rtt-responder.c
	$(CC) -c -o rtt-responder.o rtt-responder.c $(CFLAGS) $(LIBCFLAGS)
rtt-laur.out: rtt-laur.o
	$(CC) -o rtt-laur.out rtt-laur.o $(LFLAGS) $(LFLAGS_ALCHEMY)
rtt-laur.o: rtt-laur.c
	$(CC) -c -o rtt-laur.o rtt-laur.c $(CFLAGS) $(LIBCFLAGS)
rttcp-server.out: rttcp-server.o
	$(CC) -o rttcp-server.out rttcp-server.o $(LFLAGS) 
rttcp-server.o: rttcp-server.c
	$(CC) -c -o rttcp-server.o rttcp-server.c $(CFLAGS) $(LIBCFLAGS)
rttcp-client.out: rttcp-client.o
	$(CC) -o rttcp-client.out rttcp-client.o $(LFLAGS) 
rttcp-client.o: rttcp-client.c
	$(CC) -c -o rttcp-client.o rttcp-client.c $(CFLAGS) $(LIBCFLAGS)
tftpc.out: tftpc.o
	$(CC) -o tftpc.out tftpc.o $(LFLAGS) 
tftpc.o: tftpc.c
	$(CC) -c -o tftpc.o tftpc.c $(CFLAGS) $(LIBCFLAGS)

.PHONY: clean all

clean:
	rm -rf *.out *.so *.o rtt-sender rtt-responder rtt-laur rttcp-server rttcp-client
