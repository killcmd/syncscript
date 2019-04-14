repo init -u https://github.com/killcmd/platform_manifest.git -b pie
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
rm ./bloat.sh
