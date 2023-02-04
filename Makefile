default: build

.PHONY: build
build:
	gprbuild -p -P service.gpr

.PHONY: unit-tests
unit-tests:
	gprbuild -p -P test/test_service.gpr
	test/bin/test_main

.PHONY: clean-project
clean-project:
	gprclean -r -P service.gpr
	rm -rf bin
	rm -rf obj

.PHONY: clean-tests
clean-tests:
	gprclean -r -P test/test_service.gpr
	rm -rf test/bin
	rm -rf test/obj

.PHONY: clean
clean: clean-project clean-tests	
