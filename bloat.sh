repo init -u https://github.com/killcmd/manifest -b baked-op7p
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
echo "ccache -M 25G" >> build_me.sh
echo "ccache -c" >> build_me.sh
echo "repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags" >> build_me.sh
echo "source build/envsetup.sh" >> build_me.sh
echo "lunch potato_guacamole-userdebug" >> build_me.sh
echo "make clean" >> build_me.sh
echo "brunch guacamole" >> build_me.sh
chmod a+x ./build_me.sh
rm ./bloat.sh
