prefix = /etc

all: src/20-kernel-printk.conf

install: src/20-kernel-printk.conf
	install -D src/* \
		-t $(DESTDIR)$(prefix)/sysctl.d

uninstall:
	-rm -rf $(DESTDIR)$(prefix)/sysctl.d/20-kernel-printk.conf

.PHONY: all install uninstall