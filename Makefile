docker:
	docker run -it --rm --platform=linux/arm64 -v `pwd`:/data python:3.11-slim python /data/test.py
	docker run -it --rm --platform=linux/amd64 -v `pwd`:/data python:3.11-slim python /data/test.py

python:
	PYENV_VERSION=3.6 python test.py
	PYENV_VERSION=3.7 python test.py
	PYENV_VERSION=3.8 python test.py
	PYENV_VERSION=3.9 python test.py
	PYENV_VERSION=3.10 python test.py
	PYENV_VERSION=3.11 python test.py
	PYENV_VERSION=3.12.0a3 python test.py
	PYENV_VERSION=pypy3.9-7.3.10 python test.py


