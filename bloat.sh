repo init -u git://github.com/killcmd/manifest-1.git -b 9.x
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
rm ./bloat.sh
