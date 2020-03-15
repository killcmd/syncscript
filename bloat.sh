repo init --depth=1 -u https://github.com/PotatoProject/manifest -b croquette-release
mkdir ./.repo/local_manifests
echo '<?xml version="1.0" encoding="UTF-8"?>' >> ./.repo/local_manifests/potato_manifest.xml
echo '<manifest>' >> ./.repo/local_manifests/potato_manifest.xml
echo '  <project name="Evolution-X-Devices/device_oneplus_guacamole" path="device/oneplus/guacamole" remote="github" revision="ten" />' >> ./.repo/local_manifests/potato_manifest.xml
echo '</manifest>' >> ./.repo/local_manifests/potato_manifest.xml
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
echo "ccache -c" >> Taste.sh
echo "repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags" >> Taste.sh
echo "source build/envsetup.sh" >> Taste.sh
echo "breakfast guacamole" >> Taste.sh
echo "lunch potato_guacamole-userdebug" >> Taste.sh
echo "make clean" >> Taste.sh
echo "brunch guacamole" >> Taste.sh
chmod a+x ./Taste.sh
rm ./bloat.sh
