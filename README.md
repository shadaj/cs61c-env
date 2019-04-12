# CS61c Environment Container
This project sets up a Docker container that does a pretty good job of mirroring the [Hive machines](https://www.ocf.berkeley.edu/~hkn/hivemind/) machines that UC Berkeley students usually use for the [CS 61c](https://cs61c.org/) class.

To get started, first download the class files from an actual Hive machine (only UC Berkeley students taking the class have access to these).

```bash
scp -r cs61c-***@hive**.cs.berkeley.edu:/home/ff/cs61c/bin/static ./bin
scp -r cs61c-***@hive**.cs.berkeley.edu:/home/ff/cs61c/proj4 .
```

Then, build the container by running `docker build -t cs61c-env .`. Then, to use the container, just call the `run` script from whichever folder you want to load into the environment!
