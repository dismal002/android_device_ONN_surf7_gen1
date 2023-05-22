TWRP_SOURCE = https://github.com/PhantomZone54/twrp_sources_norepo/releases/download/v3.4.0-20201108/MinimalOmniRecovery-twrp-6.0-norepo-20201108.tzst
ROOM_SOURCE = https://gist.github.com/PokeyManatee4/5284be7d5adba0b088b2e33cd63ecbb2/raw/roomservice_100.py

config:
	 mkdir ~/twrp/
	 wget -q --show-progress --progress=bar:force "$(TWRP_SOURCE)" -O twrp.tzst
	 tar --zstd -xf twrp.tzst --directory ~/twrp/ 
	 rm twrp.tzst -rf
	 git clone https://github.com/PokeyManatee4/android_device_ONN_surf7_gen1 ~/twrp/device/ONN/REL
	 rm ~/twrp/bootable/recovery -rf
	 rm ~/twrp/external/busybox -rf
	 git clone https://github.com/omnirom/android_bootable_recovery -b android-9.0 --depth 1 ~/twrp/bootable/recovery
	 git clone https://github.com/TeamWin/android_external_busybox -b android-9.0 --depth 1 ~/twrp/external/busybox
