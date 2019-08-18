repo init -u git://github.com/killcmd/manifest-1.git -b op7p
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
echo "ccache -M 25G" >> guac.sh
echo "ccache -c" >> guac.sh
echo "repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags" >> guac.sh
echo "source build/envsetup.sh" >> guac.sh
echo "lunch aosp_guacamole-userdebug" >> guac.sh
echo "make clean" >> guac.sh
echo "make aex -j$(nproc --all)" >> guac.sh
chmod a+x ./guac.sh
rm ./bloat.sh
