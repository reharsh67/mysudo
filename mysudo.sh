#!/bin/bash

echo "Select the base : "
echo "01. Clone DerpFest DT+Kernel+CDT+Vendor+hals From Official Sources"
echo "02. Clone Du-Rex DT+Kernel+CDT+Vendor"
echo "03. Clone DerpFest DT+Kernel+CDT+Vendor From My Own Repo"
echo "04. Clone AEX DT+CDT From Official Sources"
echo "05: Clone PA DT+CDT+ From My Own Repo"
echo "06. Start the build DerpFest ;) "
echo "07. Start the build AEX ;) "
echo "08. Start the build PA ;) "
echo "09. Run Repo Sync (Force) "
echo "10. Clone CrDroid DT+Kernel+CDT+Vendor From Officials Git"
echo "11. Clone CrDroid DT+Kernel+CDT+Vendor From My Own Git"
echo "12. Clone AEX DT+Kernel+CDT+Vendor From Official Sources"
echo "13. Clone AEX DT+Kernel+CDT+Vendor From My Own Git"
echo "14. Clone Hals From LOS"
echo "15. Clone Hals From My Git (R)"
read base

if [ $base = 1 ]
then
rm -rf device/xiaomi kernel/xiaomi vendor/xiaomi
git clone https://github.com/DerpFest-Devices/device_xiaomi_tissot.git -b 11 device/xiaomi/tissot
git clone https://github.com/DerpFest-Devices/device_xiaomi_msm8953-common.git -b 11 device/xiaomi/msm8953-common
git clone https://github.com/DerpFest-Devices/kernel_xiaomi_msm8953.git -b 11 kernel/xiaomi/msm8953
git https://gitlab.com/Abhinavgupta371/proprietary_vendor_xiaomi.git -b lineage-18.1 vendor/xiaomi --single-branch --depth=1
rm -rf hardware/qcom-caf/msm8996/display hardware/qcom-caf/msm8996/audio hardware/qcom-caf/msm8996/media
git clone https://github.com/PixelExperience/hardware_qcom-caf_msm8996-r_display -b eleven  hardware/qcom-caf/msm8996/display
git clone https://github.com/PixelExperience/hardware_qcom-caf_msm8996-r_media -b eleven  hardware/qcom-caf/msm8996/media
git clone https://github.com/PixelExperience/hardware_qcom-caf_msm8996-r_audio -b eleven  hardware/qcom-caf/msm8996/audio
 fi

if [ $base = 2 ]
then
rm -rf device/xiaomi kernel/xiaomi vendor/xiaomi
git clone https://github.com/PixelExperience-Devices/device_xiaomi_tissot.git -b eleven device/xiaomi/tissot
git clone https://github.com/PixelExperience-Devices/device_xiaomi_msm8953-common.git -b eleven device/xiaomi/msm8953-common
git clone https://github.com/PixelExperience-Devices/kernel_xiaomi_msm8953.git -b eleven kernel/xiaomi/msm8953
git clone https://gitlab.com/Sohil876/proprietary_vendor_xiaomi.git -b eleven vendor/xiaomi --single-branch --depth=1
rm -rf hardware/qcom-caf/msm8996/display hardware/qcom-caf/msm8996/audio hardware/qcom-caf/msm8996/media
git clone https://github.com/PixelExperience/hardware_qcom-caf_msm8996-r_display -b eleven  hardware/qcom-caf/msm8996/display
git clone https://github.com/PixelExperience/hardware_qcom-caf_msm8996-r_media -b eleven  hardware/qcom-caf/msm8996/media
git clone https://github.com/PixelExperience/hardware_qcom-caf_msm8996-r_audio -b eleven  hardware/qcom-caf/msm8996/audio
fi

if [ $base = 3 ]
then
git clone https://github.com/MASTERGUY/android_device_xiaomi_tissot.git device/xiaomi/tissot
git clone https://github.com/MASTERGUY/android_device_xiaomi_msm8953-common.git device/xiaomi/msm8953-common
git clone https://github.com/MASTERGUY/kernel_xiaomi_msm8953.git kernel/xiaomi/msm8953
git clone https://github.com/MASTERGUY/proprietary_vendor_xiaomi.git vendor/xiaomi
echo "Removing Old Gapps & Replacing it with mine"!
rm -rf vendor/gapps/config.mk
wget -P vendor/gapps/ https://raw.githubusercontent.com/MASTERGUY/android_vendor_gapps/master/config.mk
echo "Removing live wallpaper crap"
rm -rf vendor/aosip/config/packages.mk
wget -P vendor/aosip/config https://raw.githubusercontent.com/MASTERGUY/vendor_aosip/master/config/packages.mk
echo "Adding FM From LOS"
git clone https://github.com/LineageOS/android_packages_apps_FMRadio packages/apps/FMRadio
git clone https://github.com/LineageOS/android_vendor_qcom_opensource_libfmjni.git vendor/qcom/opensource/libfmjni
fi

if [ $base = 4 ]
then
git clone https://github.com/AospExtended-Devices/device_xiaomi_tissot.git -b aex device/xiaomi/tissot
git clone https://github.com/AospExtended-Devices/device_xiaomi_msm8953-common.git -b aex device/xiaomi/msm8953-common
git clone https://github.com/DerpFest-Devices/kernel_xiaomi_msm8953.git kernel/xiaomi/msm8953
git clone https://github.com/DerpFest-Devices/vendor_xiaomi_tissot.git vendor/xiaomi
fi

if [ $base = 5 ]
then
git clone https://github.com/MASTERGUY/android_device_xiaomi_tissot.git -b pa device/xiaomi/tissot
git clone https://github.com/MASTERGUY/device_xiaomi_msm8953-common.git -b pa device/xiaomi/msm8953-common
git clone https://github.com/DerpFest-Devices/kernel_xiaomi_msm8953.git kernel/xiaomi/msm8953
git clone https://github.com/DerpFest-Devices/vendor_xiaomi_tissot.git vendor/xiaomi
rm -rf  hardware/qcom/bootctrl hardware/qcom/audio hardware/qcom/media hardware/qcom/display packages/apps/Bluetooth vendor/qcom/opensource/audio-hal/primary-hal
git clone https://github.com/nitrogen-project/android_hardware_qcom_bootctrl -b 10 hardware/qcom/bootctrl
git clone https://github.com/AOSPA/android_hardware_qcom_display -b quartz-89xx hardware/qcom/display
git clone https://github.com/AOSPA/android_hardware_qcom_audio -b quartz-89xx hardware/qcom/audio
git clone https://github.com/AOSPA/android_hardware_qcom_media -b quartz-89xx hardware/qcom/media
git clone https://github.com/AOSPA/android_packages_apps_Bluetooth -b quartz-dev packages/apps/Bluetooth
git clone https://github.com/AOSPA/android_hardware_qcom_media -b quartz-89xx vendor/qcom/opensource/audio-hal/primary-hal

fi


if [ $base = 6 ]
then
rm -rf vendor/gapps/config.mk
rm -rf vendor/aosip/config/packages.mk
repo sync --force-sync --no-tags --no-clone-bundle
rm -rf vendor/gapps/config.mk
rm -rf vendor/aosip/config/packages.mk
echo "Removing Old Gapps & Replacing it with mine!"
wget -P vendor/gapps/ https://raw.githubusercontent.com/MASTERGUY/android_vendor_gapps/master/config.mk
echo "Removing live wallpaper crap"
wget -P vendor/aosip/config https://raw.githubusercontent.com/MASTERGUY/vendor_aosip/master/config/packages.mk
. build/envsetup.sh
lunch derp_tissot-userdebug
time mka kronic
fi

if [ $base = 7 ]
then
repo sync --force-sync --no-tags --no-clone-bundle
. build/envsetup.sh
lunch aosp_tissot-user
mka aex -j$(nproc --all)
fi

if [ $base = 8 ]
then
echo "Removing Reduencies Before Syncing"
rm -rf hardware/qcom/bootctrl hardware/qcom/audio hardware/qcom/media hardware/qcom/display packages/apps/Bluetooth vendor/qcom/opensource/audio-hal/primary-hal
repo sync --no-tags --no-clone-bundle
echo "Adding Hals Before Building"
rm -rf hardware/qcom/bootctrl hardware/qcom/audio hardware/qcom/media hardware/qcom/display packages/apps/Bluetooth vendor/qcom/opensource/audio-hal/primary-hal
git clone https://github.com/nitrogen-project/android_hardware_qcom_bootctrl -b 10 hardware/qcom/bootctrl
git clone https://github.com/AOSPA/android_hardware_qcom_display -b quartz-89xx hardware/qcom/display
git clone https://github.com/AOSPA/android_hardware_qcom_audio -b quartz-89xx hardware/qcom/audio
git clone https://github.com/AOSPA/android_hardware_qcom_media -b quartz-89xx hardware/qcom/media
git clone https://github.com/AOSPA/android_packages_apps_Bluetooth -b quartz-dev packages/apps/Bluetooth
git clone https://github.com/AOSPA/android_hardware_qcom_media -b quartz-89xx vendor/qcom/opensource/audio-hal/primary-hal
./rom-build.sh tissot
fi

if [ $base = 9 ]
then
repo sync --force-sync --no-tags --no-clone-bundle
fi

if [ $base = 10 ]
then
git clone https://github.com/crdroidandroid/android_device_xiaomi_tissot.git -b 11.0 device/xiaomi/tissot
git clone https://github.com/crdroidandroid/android_device_xiaomi_msm8953-common-tissot.git -b 11.0 device/xiaomi/msm8953-common
git clone https://github.com/crdroidandroid/android_kernel_xiaomi_tissot.git -b 11.0 kernel/xiaomi/msm8953
git clone https://gitlab.com/MASTERGUY/proprietary_vendor_xiaomi.git -b eleven vendor/xiaomi
fi

if [ $base = 11 ]
then
git clone https://github.com/MASTERGUY/android_device_xiaomi_tissot.git -b cr-eleven device/xiaomi/tissot
git clone https://github.com/MASTERGUY/android_device_xiaomi_msm8953-common.git -b cr-eleven device/xiaomi/msm8953-common
git clone https://github.com/MASTERGUY/android_kernel_xiaomi_msm8953.git -b eleven kernel/xiaomi/msm8953
git clone https://gitlab.com/MASTERGUY/proprietary_vendor_xiaomi.git -b eleven vendor/xiaomi
fi

if [ $base = 12 ]
then
git clone https://github.com/AospExtended-Devices/device_xiaomi_tissot.git -b 11.x device/xiaomi/tissot
git clone https://github.com/AospExtended-Devices/device_xiaomi_msm8953-common.git -b 11.x device/xiaomi/msm8953-common
git clone https://github.com/MASTERGUY/android_kernel_xiaomi_msm8953.git -b eleven kernel/xiaomi/msm8953
git clone https://gitlab.com/MASTERGUY/proprietary_vendor_xiaomi.git -b eleven vendor/xiaomi
fi

if [ $base = 13 ]
then
git clone https://github.com/MASTERGUY/android_device_xiaomi_tissot.git -b aex11 device/xiaomi/tissot
git clone https://github.com/MASTERGUY/android_device_xiaomi_msm8953-common.git -b aex11 device/xiaomi/msm8953-common
git clone https://github.com/MASTERGUY/android_kernel_xiaomi_msm8953.git -b eleven kernel/xiaomi/msm8953
git clone https://gitlab.com/MASTERGUY/proprietary_vendor_xiaomi.git -b eleven vendor/xiaomi
fi

if [ $base = 14 ]
then
rm -rf hardware/qcom-caf/msm8996/display hardware/qcom-caf/msm8996/audio hardware/qcom-caf/msm8996/media
git clone https://github.com/LineageOS/android_hardware_qcom_display -b lineage-18.0-caf-msm8996 hardware/qcom-caf/msm8996/display
git clone https://github.com/LineageOS/android_hardware_qcom_media -b lineage-18.0-caf-msm8996 hardware/qcom-caf/msm8996/media
git clone https://github.com/LineageOS/android_hardware_qcom_audio -b lineage-18.0-caf-msm8996 hardware/qcom-caf/msm8996/audio
fi

if [ $base = 15 ]
then
rm -rf hardware/qcom-caf/msm8996/display hardware/qcom-caf/msm8996/audio hardware/qcom-caf/msm8996/media
git clone https://github.com/MASTERGUY/hardware_qcom-caf_msm8996_display.git -b eleven hardware/qcom-caf/msm8996/display
git clone https://github.com/MASTERGUY/hardware_qcom-caf_msm8996_media.git -b eleven hardware/qcom-caf/msm8996/media
git clone https://github.com/LineageOS/android_hardware_qcom_audio -b lineage-18.0-caf-msm8996 hardware/qcom-caf/msm8996/audio
fi



echo "Task is executed successfully"

