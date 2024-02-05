NAME = quiet-shutdown
VERSION = 0.1
PKG_VERSION = 1
ARCH = all
PKG_NAME = $(NAME)_$(VERSION)-$(PKG_VERSION)_$(ARCH).deb

SYSCTL_DIR = etc/sysctl.d/

deb_package:
	mkdir -p PKG_SOURCE/$(SYSCTL_DIR)/
	cp -r debian PKG_SOURCE/DEBIAN

	cp -r src/* PKG_SOURCE/$(SYSCTL_DIR)/
	
	dpkg-deb --root-owner-group --build PKG_SOURCE $(PKG_NAME)
	rm -r PKG_SOURCE