NAME = quiet-shutdown
VERSION = 0.1
SYSCTL_DIR = etc/sysctl.d/
PKG_NAME = $(NAME)_$(VERSION)-1_all.deb

deb_package:
	mkdir -p PKG_SOURCE/$(SYSCTL_DIR)/
	cp -r debian PKG_SOURCE/DEBIAN
	cp -r src/* PKG_SOURCE/$(SYSCTL_DIR)/
	dpkg-deb --root-owner-group --build PKG_SOURCE $(PKG_NAME)
	rm -r PKG_SOURCE