import platform as p
import time


def fib(n):
    if n <= 1:
        return n
    return fib(n - 1) + fib(n - 2)


def test():
    start = time.perf_counter()
    fib(35)
    elapsed = time.perf_counter() - start
    print('{}-{}-{}: {}'.format(
        p.python_implementation(),
        p.python_version(),
        p.machine(),
        elapsed
    ))


if __name__ == '__main__':
    test()
