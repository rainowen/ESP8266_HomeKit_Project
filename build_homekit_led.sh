export PATH=$PWD/esp-open-sdk/xtensa-lx106-elf/bin/:$PATH
export SDK_PATH=$PWD/esp-open-rtos
export ESPPORT=/dev/ttyUSB0

cd esp-homekit-demo
make flash -C examples/led all
cd ..
