from_dir=$1
to_dir=$2

IFS=$'\n'
filesFirst=$(find $from_dir -type f -maxdepth 1)
foldersFirst=$(find $from_dir -type d -maxdepth 1 -mindepth 1)
allFiles=$(find $from_dir -type f)

for file in $allFiles
do
    cp $file $to_dir
done