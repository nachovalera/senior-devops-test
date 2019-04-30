.PHONY: update_dependencies
update_dependencies:
	mvn versions:use-latest-versions -Dincludes='com.wwa.*'

.PHONY: update_version
update_version:
	mvn versions:set -DnewVersion=1.0

.PHONY: compile
compile:
	mvn package

.PHONY: execute
execute:
	java -jar target/app-example-1.0.jar

.PHONY: up
up: update_dependencies update_version compile execute
