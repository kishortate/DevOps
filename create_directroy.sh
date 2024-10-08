#Write a bash script createDirectories.sh that, when executed with three arguments (directory name, start number of directories, and end number of directories), creates a specified number of directories with a dynamic directory name.


read -p "Enter directroy name to create: " dir_name
read -p "Enter start number to create directores: " start_num
read -p "Enter end number to create directories: " end_num

echo "Directories with prefix $dir_name from $start_num to $end_num will be created"

function create_dir {
for (( i=$start_num;i<=$end_num;i++ ))
do
	create_directory=$(mkdir "${dir_name}${i}")
done
}
create_dir
echo "Directory creation process completed"
