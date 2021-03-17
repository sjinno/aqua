# aqua

### Description

> This is just a reminder app to encourage me to drink water regularly while doing something on the computer.

### Requirement

`sox` needs to be installed to be able to execute this.

On fedora,

```bash
sudo dnf install sox
```

On other linux distros, you should probably be able to find formula for isntalling `sox`.

On mac, probably `brew install sox`.

### Usage

```bash
# 1. Give execution permission
chmod u+x ./warnme.sh

# 2. Run
./warnme.sh
```