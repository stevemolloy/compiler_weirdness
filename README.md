# Intro

This is a demo of how C compilers can behave in an unexpected way.

It goes with this video: https://youtu.be/6Z5zyYtrRng 

# Quick start
```console
$ make run
```

# Explanation

This compiles the same code four different ways.  Two different compilers (gcc & clang) with and without optimizations.

When run, the output of the executable depends on how it was compiled.  Adding the `-fwrapv` to `CFLAGS` in the Makefile will make all four behave identically (and as expected).
