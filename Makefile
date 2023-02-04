default: build

.PHONY: build
build:
	gprbuild -p -P service.gpr

.PHONY: clean
clean:
	gprclean -r -P service.gpr
	rm -rf bin
	rm -rf obj
