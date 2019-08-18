repo init -u git://github.com/killcmd/manifest-1.git -b op7p
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
echo "ccache -M 25G" >> buildin.sh
echo "ccache -c" >> buildin.sh
echo "repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags" >> buildin.sh
echo "source build/envsetup.sh" >> buildin.sh
echo "lunch aosp_guacamole-userdebug" >> buildin.sh
echo "make clean" >> buildin.sh
echo "make aex -j$(nproc --all)" >> buildin.sh
chmod a+x ./buildin.sh
rm ./bloat.sh
