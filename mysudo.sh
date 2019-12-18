#!/bin/bash

echo "Select the base : "
echo "1. Clone DerpFest DT+Kernel+CDT+Vendor"
echo "2. Clone Du-Rex DT+Kernel+CDT+Vendor"
read base

if [ $base = 1 ]
then
git clone https://github.com/MASTERGUY/android_device_xiaomi_tissot.git device/xiaomi/tissot
git clone https://github.com/MASTERGUY/android_device_xiaomi_msm8953-common.git device/xiaomi/msm8953-common
git clone https://github.com/MASTERGUY/kernel_xiaomi_msm8953.git kernel/xiaomi/msm8953
git clone https://github.com/MASTERGUY/proprietary_vendor_xiaomi.git vendor/xiaomi
git clone https://github.com/MASTERGUY/android_device_twrp_tissot.git device/twrp/tissot
fi

if [ $base = 2 ]
then

git clone https://github.com/MASTERGUY/android_device_xiaomi_tissot.git -b du10 device/xiaomi/tissot
git clone https://github.com/MASTERGUY/android_device_xiaomi_msm8953-common.git device/xiaomi/msm8953-common
git clone https://github.com/MASTERGUY/kernel_xiaomi_msm8953.git kernel/xiaomi/msm8953
git clone https://github.com/MASTERGUY/proprietary_vendor_xiaomi.git vendor/xiaomi
git clone https://github.com/MASTERGUY/android_device_twrp_tissot.git device/twrp/tissot
fi
echo "Cloning Done!"
