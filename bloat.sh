repo init -u https://github.com/killcmd/manifest -b baked-release
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
rm ./bloat.sh
