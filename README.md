**TLDR**:  *Apple Silicon has only one-tenth the performance when running x86 images*


## Apple silicon docker performance for x86 images

```
docker run -it --rm --platform=linux/arm64 -v `pwd`:/data python:3.11-slim python /data/test.py
CPython-3.11.1-aarch64: 0.9712225839903113

docker run -it --rm --platform=linux/amd64 -v `pwd`:/data python:3.11-slim python /data/test.py
CPython-3.11.1-x86_64: 9.646452711996972
```

## Python performance comparison
```
CPython-3.6.15-arm64:   1.9835602499661036
CPython-3.7.16-arm64:   1.893600833
CPython-3.8.16-arm64:   1.788195709
CPython-3.9.16-arm64:   1.8061515000000001
CPython-3.10.9-arm64:   1.9291735420119949
CPython-3.11.1-arm64:   1.0686773330089636
CPython-3.12.0a3-arm64: 1.1968839999753982
PyPy-3.9.15-arm64:      0.07786258397391066
```
