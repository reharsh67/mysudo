#!/bin/bash

echo "Select the base : "
echo "1. Clone DerpFest DT+Kernel+CDT+Vendor From Official Sources"
echo "2. Clone Du-Rex DT+Kernel+CDT+Vendor"
echo "3. Clone DerpFest DT+Kernel+CDT+Vendor From My Own Repo"
read base

if [ $base = 1 ]
then
git clone https://github.com/DerpFest-Devices/device_xiaomi_tissot.git device/xiaomi/tissot
git clone https://github.com/DerpFest-Devices/device_xiaomi_msm8953-common.git device/xiaomi/msm8953-common
git clone https://github.com/DerpFest-Devices/kernel_xiaomi_msm8953.git kernel/xiaomi/msm8953
git clone https://github.com/DerpFest-Devices/vendor_xiaomi_tissot.git vendor/xiaomi
git clone https://github.com/MASTERGUY/android_device_twrp_tissot.git device/twrp/tissot
echo "Removing Old Gapps & Replacing it with mine!"
rm -rf vendor/aosip/gapps/config.mk
git clone  https://github.com/MASTERGUY/android_vendor_gapps.git vendor/aosip/gapps/
echo "Adding FM From LOS"
git clone https://github.com/LineageOS/android_packages_apps_FMRadio packages/apps/FMRadio
git clone https://github.com/LineageOS/android_vendor_qcom_opensource_libfmjni.git vendor/qcom/opensource/libfmjni
fi

if [ $base = 2 ]
then

git clone https://github.com/MASTERGUY/android_device_xiaomi_tissot.git -b du10 device/xiaomi/tissot
git clone https://github.com/MASTERGUY/android_device_xiaomi_msm8953-common.git device/xiaomi/msm8953-common
git clone https://github.com/MASTERGUY/kernel_xiaomi_msm8953.git kernel/xiaomi/msm8953
git clone https://github.com/MASTERGUY/proprietary_vendor_xiaomi.git vendor/xiaomi
git clone https://github.com/MASTERGUY/android_device_twrp_tissot.git device/twrp/tissot
fi

if [ $base = 3 ]
then
git clone https://github.com/MASTERGUY/android_device_xiaomi_tissot.git device/xiaomi/tissot
git clone https://github.com/MASTERGUY/android_device_xiaomi_msm8953-common.git device/xiaomi/msm8953-common
git clone https://github.com/MASTERGUY/kernel_xiaomi_msm8953.git kernel/xiaomi/msm8953
git clone https://github.com/MASTERGUY/proprietary_vendor_xiaomi.git vendor/xiaomi
git clone https://github.com/MASTERGUY/android_device_twrp_tissot.git device/twrp/tissot
echo "Removing Old Gapps & Replacing it with mine!"
rm -rf vendor/aosip/gapps/config.mk
git clone  https://github.com/MASTERGUY/android_vendor_gapps.git vendor/aosip/gapps/
echo "Adding FM From LOS"
git clone https://github.com/LineageOS/android_packages_apps_FMRadio packages/apps/FMRadio
git clone https://github.com/LineageOS/android_vendor_qcom_opensource_libfmjni.git vendor/qcom/opensource/libfmjni


echo "Cloning Done!"
