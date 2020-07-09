files = hello.* test.cpp
bin = app
all: say_hello generate

say_hello:
	@echo "Hello world!"

generate:
	@echo "Creating files"
	touch code.py

clean:
	@echo "Cleaning files"
	rm code.py
