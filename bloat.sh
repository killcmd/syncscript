repo init --depth=1 -u git://github.com/AospExtended/manifest.git -b 10.x
mkdir ./.repo/local_manifests
echo '<?xml version="1.0" encoding="UTF-8"?>' >> ./.repo/local_manifests/AEX_manifest.xml
echo '<manifest>' >> ./.repo/local_manifests/AEX_manifest.xml
echo '  <project name="killcmd/device_oneplus_guacamole" path="device/oneplus/guacamole" remote="github" revision="AEX" />' >> ./.repo/local_manifests/AEX_manifest.xml
echo '  <project name="potatodevices/device_oneplus_common" path="device/oneplus/common" remote="github" revision="croquette-release" />' >> ./.repo/local_manifests/AEX_manifest.xml
echo '  <project name="killcmd/device_oneplus_sm8150-common" path="device/oneplus/sm8150-common" remote="github" revision="croquette-release" />' >> ./.repo/local_manifests/AEX_manifest.xml
echo '  <project name="omnirom/android_kernel_oneplus_sm8150" path="kernel/oneplus/sm8150" remote="github" revision="android-10" />' >> ./.repo/local_manifests/AEX_manifest.xml
echo '  <project name="potatodevices/vendor_oneplus" path="vendor/oneplus" remote="github" revision="croquette-release" />' >> ./.repo/local_manifests/AEX_manifest.xml
echo '</manifest>' >> ./.repo/local_manifests/AEX_manifest.xml
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
echo "ccache -c" >> Taste.sh
echo "repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags" >> Taste.sh
echo "source build/envsetup.sh" >> Taste.sh
echo "lunch aosp_guacamole-userdebug" >> Taste.sh
echo "make clean" >> Taste.sh
echo "make aex -j$(nproc --all)" >> Taste.sh
chmod a+x  ./Taste.sh
rm ./bloat.sh
