# Part 5.1 Java

To execute all java jobs:
```bash
make build_java # This will build the library, build the app and run it in http://127.0.0.1:1234/
```

# Part 5.2 Python

```bash
cd python/wwa_app_example
make code_analysis # This should fail because library requests is imported but not used
make test # This should fail because the second test is intended to fail
make generate_package
make install_package
make run # This should fail because the app doesn't do anything
```

# Part 6 Packaging

```bash
cd ansible-vagrant/
vagrant up
```
