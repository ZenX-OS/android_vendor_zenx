# Copyright (C) 2020 ZenX-OS
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Zenx Target Zip
ZENX_TARGET_PACKAGE := $(PRODUCT_OUT)/$(ZENX_VERSION).zip

MD5 := prebuilts/build-tools/path/$(HOST_OS)-x86/md5sum

.PHONY: zenx
zenx: $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(ZENX_TARGET_PACKAGE)
	$(hide) $(MD5) $(ZENX_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(ZENX_TARGET_PACKAGE).md5
	@echo -e ${CL_CYN}""${CL_CYN}
	@echo -e ""
	@echo -e ${CL_BLU}"███████╗███████╗███╗   ██╗██╗  ██╗      ██████╗ ███████╗"
	@echo -e ${CL_BLU}"╚══███╔╝██╔════╝████╗  ██║╚██╗██╔╝     ██╔═══██╗██╔════╝"
	@echo -e ${CL_BLU}"  ███╔╝ █████╗  ██╔██╗ ██║ ╚███╔╝█████╗██║   ██║███████╗"
	@echo -e ${CL_BLU}" ███╔╝  ██╔══╝  ██║╚██╗██║ ██╔██╗╚════╝██║   ██║╚════██║"
	@echo -e ${CL_BLU}"███████╗███████╗██║ ╚████║██╔╝ ██╗     ╚██████╔╝███████║"
	@echo -e ${CL_BLU}"╚══════╝╚══════╝╚═╝  ╚═══╝╚═╝  ╚═╝      ╚═════╝ ╚══════╝"
	@echo -e ""
	@echo -e ${CL_CYN}""${CL_CYN}
	@echo -e ${CL_CYN}"===========-ZenX-OS Package Complete-==========="${CL_RST}
	@echo -e ${CL_CYN}"Zip: "${CL_MAG} $(ZENX_TARGET_PACKAGE)${CL_RST}
	@echo -e ${CL_CYN}"MD5: "${CL_MAG}" `cat $(ZENX_TARGET_PACKAGE).md5 | cut -d ' ' -f 1`"${CL_RST}
	@echo -e ${CL_CYN}"Size:"${CL_MAG}" `ls -lah $(ZENX_TARGET_PACKAGE) | cut -d ' ' -f 5`"${CL_RST}
	@echo -e ${CL_CYN}"==============================================="${CL_RST}
	@echo -e ${CL_CYN}"Developed for excellence"${CL_RST}
	@echo -e ${CL_CYN}"==============================================="${CL_RST}
	@echo -e ""
