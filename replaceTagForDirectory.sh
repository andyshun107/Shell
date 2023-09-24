#file_name=$1;

#search_dir=/Users/yayasin/Documents/BR/Script/S1
if (( $# < 1 ))
then
    printf "%b" "Please pass the directory path\n" 
    exit 1
fi 
search_dir=$1
search_dir_bkp=$search_dir"_BKP"

echo "$search_dir_bkp"

mkdir $search_dir_bkp
cp -R "$search_dir" "$search_dir_bkp"


for file_name in "$search_dir"/*
do
  echo "$file_name"
  sed -i "" 's/ProcessorTransactionId/MasterCardFinancialTransactionId/g' "$file_name"
done

