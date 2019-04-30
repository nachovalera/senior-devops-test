.PHONY: update_version
update_version:
	mvn versions:set -DnewVersion=1.1

.PHONY: compile
compile:
	mvn package

.PHONY: install_localy
install_localy:
	mvn install:install-file -Dfile=target/lib-example-1.1.jar -DpomFile=pom.xml

.PHONY: up
up: update_version compile install_localy
