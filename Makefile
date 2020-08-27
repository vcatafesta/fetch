###############################################
#           build options                     #
###############################################
#
####### Building iso2usb support ########
#
#

SHELL=/bin/bash
DESTDIR=
BINDIR=${DESTDIR}/sbin
INFODIR=${DESTDIR}/usr/share/doc/fetch
MODE=775
DIRMODE=755

.PHONY: build

install:
	mkdir -p ${BINDIR}
	install -m ${MODE} src/fetch ${BINDIR}/fetch
	mkdir -p ${INFODIR}
	cp ChangeLog INSTALL LICENSE MAINTAINERS README.md ${INFODIR}/
	@echo "Software fetch was installed in ${BINDIR}"

uninstall:
	rm ${BINDIR}/fetch
	rm -rf ${INFODIR}
	@echo "Software fetch was removed."


