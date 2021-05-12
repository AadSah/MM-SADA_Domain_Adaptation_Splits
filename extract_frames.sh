dir=$1
tar_dirs=`find frames_rgb_flow | grep ".tar"`
for tar_dir in $tar_dirs
do
	#printf "$tar_dir \n"
	new_dir="new_frames/"${tar_dir::-4}
	#printf "$new_dir \n"
	printf "mkdir -p $new_dir \n"
	printf "tar -xvf $tar_dir -C $new_dir \n"
	mkdir -p $new_dir
	tar -xvf $tar_dir -C $new_dir
done
