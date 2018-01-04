export PATH=esp-open-sdk/xtensa-lx106-elf/bin/:$PATH
export SDK_PATH=.
export ESPPORT=/dev/ttyUSB0

cd esp-homekit-demo
make flash -C examples/led all
cd ..