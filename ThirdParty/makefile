
LIBRARY_PACKAGE=SPARSKIT2/libskit.a

.PHONY: default clean

default: $(LIBRARY_PACKAGE)
$(LIBRARY_PACKAGE):
	tar -xf $(@D).tar.gz
	$(MAKE) -C $(@D)

clean:
	-rm -r $(dir $(LIBRARY_PACKAGE))
