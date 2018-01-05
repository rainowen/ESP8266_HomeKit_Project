# NodeMCU_HomeKit_Project

## Demo of [Apple HomeKit accessory server library]https://github.com/maximkulkin/esp-homekit).

## Usage


1. git clone and sync all submodules (recursively):
```shell
 git clone --recursive https://github.com/rainowen/NodeMCU_HomeKit_Project.git
```
2. Copy wifi.h.sample -> wifi.h and edit it with correct WiFi SSID and password.

3. Build [esp-open-sdk](https://github.com/pfalcon/esp-open-sdk)

   add '--with-libtool=/usr/share/libtool' behind Makefile(esp-open-sdk) line 147.

```
 ./configure --prefix=`pwd` -> ./configure --prefix=`pwd` --with-libtool=/usr/share/libtool
```

   then follow the build instruction in https://github.com/pfalcon/esp-open-sdk to install required libs

   Build [esp-open-sdk](https://github.com/pfalcon/esp-open-sdk), with `make toolchain esptool libhal STANDALONE=n`, or run the script 'build_crosstool_chain.sh' (Despite the similar name esp-open-sdk has different maintainers - but we think it's fantastic!)

```shell
 ./build_crosstool_chain.sh
```

4. Change the flash size in esp-open-rtos/parameters.mk.


```
FLASH_SIZE ?= 4MB

FLASH_MODE ?= qio

FLASH_SPEED ?= 40
```

5. Build example:
```shell
 ./build_homekit_led.sh
```
