from setuptools import setup, Extension
from Cython.Build import cythonize


setup(
    name='main',
    ext_modules=cythonize([Extension("func",
                                     ["func.pyx"],
                                     extra_compile_args=["-O3", "-std=c++11"], language="c++")]),
    zip_safe=False,
)
