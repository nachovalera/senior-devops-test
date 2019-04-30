.PHONY: build_java
build_java:
	cd java/lib-example && make up
	cd java/app-example && make up
