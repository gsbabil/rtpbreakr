# rtpbreakr Makefile.

INSTALL_DIR = /usr/local/bin

#####################################################################

all: build

build:
	$(MAKE) -C src
	mv src/rtpbreakr ./
	@echo ""
	@echo "rtpbreakr has been compiled!"
	@echo ""

install:
	cp ./rtpbreakr $(INSTALL_DIR)
	@echo ""
	@echo "rtpbreakr has been installed!"
	@echo ""

clean:
	$(MAKE) -C src clean || true
	rm -f ./rtpbreakr
#eof
