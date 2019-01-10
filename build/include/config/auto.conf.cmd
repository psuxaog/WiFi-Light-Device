deps_config := \
	/home/linx/esp32/esp-idf/components/app_trace/Kconfig \
	/home/linx/esp32/esp-idf/components/aws_iot/Kconfig \
	/home/linx/esp32/esp-idf/components/bt/Kconfig \
	/home/linx/esp32/esp-idf/components/driver/Kconfig \
	/home/linx/esp32/esp-idf/components/esp32/Kconfig \
	/home/linx/esp32/esp-idf/components/esp_adc_cal/Kconfig \
	/home/linx/esp32/esp-idf/components/esp_event/Kconfig \
	/home/linx/esp32/esp-idf/components/esp_http_client/Kconfig \
	/home/linx/esp32/esp-idf/components/esp_http_server/Kconfig \
	/home/linx/esp32/esp-idf/components/ethernet/Kconfig \
	/home/linx/esp32/esp-idf/components/fatfs/Kconfig \
	/home/linx/esp32/esp-idf/components/freemodbus/Kconfig \
	/home/linx/esp32/esp-idf/components/freertos/Kconfig \
	/home/linx/esp32/esp-idf/components/heap/Kconfig \
	/home/linx/esp32/esp-idf/components/libsodium/Kconfig \
	/home/linx/esp32/esp-idf/components/log/Kconfig \
	/home/linx/esp32/esp-idf/components/lwip/Kconfig \
	/home/linx/esp32/esp-idf/components/mbedtls/Kconfig \
	/home/linx/esp32/esp-idf/components/mdns/Kconfig \
	/home/linx/esp32/esp-idf/components/mqtt/Kconfig \
	/home/linx/esp32/esp-idf/components/nvs_flash/Kconfig \
	/home/linx/esp32/esp-idf/components/openssl/Kconfig \
	/home/linx/esp32/esp-idf/components/pthread/Kconfig \
	/home/linx/esp32/esp-idf/components/spi_flash/Kconfig \
	/home/linx/esp32/esp-idf/components/spiffs/Kconfig \
	/home/linx/esp32/esp-idf/components/tcpip_adapter/Kconfig \
	/home/linx/esp32/esp-idf/components/unity/Kconfig \
	/home/linx/esp32/esp-idf/components/vfs/Kconfig \
	/home/linx/esp32/esp-idf/components/wear_levelling/Kconfig \
	/home/linx/esp32/esp-idf/components/app_update/Kconfig.projbuild \
	/home/linx/esp32/esp-idf/components/bootloader/Kconfig.projbuild \
	/home/linx/esp32/esp-idf/components/esptool_py/Kconfig.projbuild \
	/home/linx/esp32/esp-idf/WiFi-Light-ESP32-Device/main/Kconfig.projbuild \
	/home/linx/esp32/esp-idf/components/partition_table/Kconfig.projbuild \
	/home/linx/esp32/esp-idf/Kconfig

include/config/auto.conf: \
	$(deps_config)

ifneq "$(IDF_TARGET)" "esp32"
include/config/auto.conf: FORCE
endif
ifneq "$(IDF_CMAKE)" "n"
include/config/auto.conf: FORCE
endif

$(deps_config): ;
