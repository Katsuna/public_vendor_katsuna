# Copyright (C) 2017 Unlegacy-Android
# Copyright (C) 2017 The LineageOS Project
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

# -----------------------------------------------------------------


ifneq ($(BUILD_WITH_COLORS),0)
  CL_SLIM="\033[38;5;24m"
  CL_SGRY="\033[38;5;239m"
  CL_RST="\033[0m"
endif

KATSUNA_TARGET_PACKAGE := $(PRODUCT_OUT)/$(ROM_ZIP_NAME)-$(USER).zip

.PHONY: bacon
bacon: $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(KATSUNA_TARGET_PACKAGE)
	$(hide) $(MD5SUM) $(KATSUNA_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(KATSUNA_TARGET_PACKAGE).md5sum
	@echo -e " "
	@echo -e ${CL_CYN}"Package Complete: $(KATSUNA_TARGET_PACKAGE)"${CL_RST}
