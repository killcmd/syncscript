repo init -u git://github.com/killcmd/manifest-1.git -b 9.x
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
echo "ccache -M 25G" >> build_me.sh
echo "ccache -c" >> build_me.sh
echo "repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags" >> build_me.sh
echo "source build/envsetup.sh" >> build_me.sh
echo "lunch aosp_mata-userdebug" >> build_me.sh
echo "make clean" >> build_me.sh
echo "make aex -j$(nproc --all)" >> build_me.sh
chmod +x ./build_me.sh
rm ./bloat.sh
