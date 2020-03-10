#!/bin/bash

echo "Select the base : "
echo "1. Clone DerpFest DT+Kernel+CDT+Vendor From Official Sources"
echo "2. Clone Du-Rex DT+Kernel+CDT+Vendor"
echo "3. Clone DerpFest DT+Kernel+CDT+Vendor From My Own Repo"
echo "4. Clone AEX DT+Kernel+CDT From Official Sources"
echo "5. Start the build DerpFest ;) "
echo "6. Start the build AEX ;) "
read base

if [ $base = 1 ]
then
git clone https://github.com/DerpFest-Devices/device_xiaomi_tissot.git device/xiaomi/tissot
git clone https://github.com/DerpFest-Devices/device_xiaomi_msm8953-common.git device/xiaomi/msm8953-common
git clone https://github.com/DerpFest-Devices/kernel_xiaomi_msm8953.git kernel/xiaomi/msm8953
git clone https://github.com/DerpFest-Devices/vendor_xiaomi_tissot.git vendor/xiaomi
echo "Removing Old Gapps & Replacing it with mine!"
rm -rf vendor/gapps/config.mk
wget -P vendor/gapps/ https://raw.githubusercontent.com/MASTERGUY/android_vendor_gapps/master/config.mk
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
fi

if [ $base = 3 ]
then
git clone https://github.com/MASTERGUY/android_device_xiaomi_tissot.git device/xiaomi/tissot
git clone https://github.com/MASTERGUY/android_device_xiaomi_msm8953-common.git device/xiaomi/msm8953-common
git clone https://github.com/MASTERGUY/kernel_xiaomi_msm8953.git kernel/xiaomi/msm8953
git clone https://github.com/MASTERGUY/proprietary_vendor_xiaomi.git vendor/xiaomi
echo "Removing Old Gapps & Replacing it with mine"!
rm -rf vendor/aosip/gapps/config.mk
wget -P vendor/gapps/ https://raw.githubusercontent.com/MASTERGUY/android_vendor_gapps/master/config.mk
echo "Adding FM From LOS"
git clone https://github.com/LineageOS/android_packages_apps_FMRadio packages/apps/FMRadio
git clone https://github.com/LineageOS/android_vendor_qcom_opensource_libfmjni.git vendor/qcom/opensource/libfmjni
fi

if [ $base = 4 ]
then
git clone https://github.com/AospExtended-Devices/device_xiaomi_tissot -b aex device/xiaomi/tissot
git clone https://github.com/AospExtended-Devices/device_xiaomi_msm8953-common.git -b aex device/xiaomi/msm8953-common
git clone https://github.com/AospExtended-Devices/kernel_xiaomi_msm8953.git -b ten kernel/xiaomi/msm8953
git clone https://github.com/DerpFest-Devices/vendor_xiaomi_tissot.git vendor/xiaomi
fi

if [ $base = 5 ]
then
rm -rf vendor/aosip/gapps/config.mk
rm -rf vendor/pixelstyle/
repo sync --force-sync --no-tags --no-clone-bundle
rm -rf vendor/aosip/gapps/config.mk
rm -rf vendor/pixelstyle/
echo "Removing Old Gapps & Replacing it with mine!"
wget -P vendor/gapps/ https://raw.githubusercontent.com/MASTERGUY/android_vendor_gapps/master/config.mk
echo "Replacing with my pixel style"
git clone https://github.com/MASTERGUY/platform_vendor_pixelstyle.git vendor/pixelstyle/
. build/envsetup.sh
lunch derp_tissot-userdebug
time mka kronic
fi

if [ $base = 6 ]
then
repo sync --force-sync --no-tags --no-clone-bundle
. build/envsetup.sh
lunch aosp_tissot-userdebug
mka aex -j$(nproc --all)
fi

echo "Task is executed successfully"
