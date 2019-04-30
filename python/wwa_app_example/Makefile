.PHONY: code_analysis
code_analysis: env_ok
	env/bin/python -m flake8 --select F *.py
	env/bin/python -m flake8 --select F wwa_app_example/*.py

.PHONY: test
test: env_ok
	env/bin/python -m unittest tests/sometests.py

.PHONY: generate_package
generate_package:
	python3 -m pip install --user --upgrade setuptools wheel
	python3 setup.py sdist bdist_wheel

.PHONY: install_package
install_package:
	env/bin/pip install dist/wwa_app_example-1.0.1508506802-py3-none-any.whl

.PHONY: run
run: env_ok
	env/bin/python -m wwa-app-example

env: requirements.txt
	rm -rf env env_ok
	python3 -m venv env

env_ok: env
	python3 -m venv env
	env/bin/pip install -r requirements.txt
	touch env_ok