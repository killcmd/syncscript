repo init -u https://github.com/killcmd/platform_manifest.git -b pie
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
echo "ccache -M 25G" >> build_me.sh
echo "ccache -c" >> build_me.sh
echo "repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags" >> build_me.sh
echo "source build/envsetup.sh" >> build_me.sh
echo "lunch rr_mata-userdebug" >> build_me.sh
echo "make clean" >> build_me.sh
echo "brunch mata" >> build_me.sh
chmod a+x ./build_me.sh
rm ./bloat.sh
