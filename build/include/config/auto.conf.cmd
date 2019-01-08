deps_config := \
	D:\msys32\usr\src\esp-idf\components\app_trace\Kconfig \
	D:\msys32\usr\src\esp-idf\components\aws_iot\Kconfig \
	D:\msys32\usr\src\esp-idf\components\bt\Kconfig \
	D:\msys32\usr\src\esp-idf\components\driver\Kconfig \
	D:\msys32\usr\src\esp-idf\components\esp32\Kconfig \
	D:\msys32\usr\src\esp-idf\components\esp_adc_cal\Kconfig \
	D:\msys32\usr\src\esp-idf\components\esp_event\Kconfig \
	D:\msys32\usr\src\esp-idf\components\esp_http_client\Kconfig \
	D:\msys32\usr\src\esp-idf\components\esp_http_server\Kconfig \
	D:\msys32\usr\src\esp-idf\components\ethernet\Kconfig \
	D:\msys32\usr\src\esp-idf\components\fatfs\Kconfig \
	D:\msys32\usr\src\esp-idf\components\freemodbus\Kconfig \
	D:\msys32\usr\src\esp-idf\components\freertos\Kconfig \
	D:\msys32\usr\src\esp-idf\components\heap\Kconfig \
	D:\msys32\usr\src\esp-idf\components\libsodium\Kconfig \
	D:\msys32\usr\src\esp-idf\components\log\Kconfig \
	D:\msys32\usr\src\esp-idf\components\lwip\Kconfig \
	D:\msys32\usr\src\esp-idf\components\mbedtls\Kconfig \
	D:\msys32\usr\src\esp-idf\components\mdns\Kconfig \
	D:\msys32\usr\src\esp-idf\components\mqtt\Kconfig \
	D:\msys32\usr\src\esp-idf\components\nvs_flash\Kconfig \
	D:\msys32\usr\src\esp-idf\components\openssl\Kconfig \
	D:\msys32\usr\src\esp-idf\components\pthread\Kconfig \
	D:\msys32\usr\src\esp-idf\components\spi_flash\Kconfig \
	D:\msys32\usr\src\esp-idf\components\spiffs\Kconfig \
	D:\msys32\usr\src\esp-idf\components\tcpip_adapter\Kconfig \
	D:\msys32\usr\src\esp-idf\components\unity\Kconfig \
	D:\msys32\usr\src\esp-idf\components\vfs\Kconfig \
	D:\msys32\usr\src\esp-idf\components\wear_levelling\Kconfig \
	D:\msys32\usr\src\esp-idf\components\app_update\Kconfig.projbuild \
	D:\msys32\usr\src\esp-idf\components\bootloader\Kconfig.projbuild \
	D:\msys32\usr\src\esp-idf\components\esptool_py\Kconfig.projbuild \
	D:\msys32\usr\src\esp-idf\github\wifilight\main\Kconfig.projbuild \
	D:\msys32\usr\src\esp-idf\components\partition_table\Kconfig.projbuild \
	/usr/src/esp-idf/Kconfig

include/config/auto.conf: \
	$(deps_config)

ifneq "$(IDF_TARGET)" "esp32"
include/config/auto.conf: FORCE
endif
ifneq "$(IDF_CMAKE)" "n"
include/config/auto.conf: FORCE
endif

$(deps_config): ;
