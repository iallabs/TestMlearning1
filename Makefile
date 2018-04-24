# Makefile

#Project
PROJECT = "Convolution test"
#Version
RELEASE = "0.0.1"
# Compiler
PYTHON ?= python
# Path to source directory
PROJECT_PATH := .
# OS machine
OS_TYPE = 'uname -a'
# PY EXTENSIONS
PYTHON_EXT = ".py"


clean_results:
	rm -rf *.test


prestart:
	@echo "Installing requirements"
	pip install -r requirements.txt


check_tensorflow:
	@echo "Checking tensorflow version"
	python -c "import tensorflow; print(tensorflow.__version__)"

run10000iter:
	python convolu.py 10000


run1000iter:
	python convolu.py 1000


clean:
	rm -f MANIFEST
	rm -rf build dist

all: check_tensorflow run10000iter


.PHONY: clean