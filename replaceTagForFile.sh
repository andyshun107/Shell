if (( $# < 1 ))
then
    printf "%b" "Please pass the file name along with the path\n" 
    exit 1
fi 
file_name=$1;
file_name_bkp=$file_name"_BKP"

 cp  "$file_name" "$file_name_bkp"

  echo "$file_name"
  echo "$file_name_bkp"

  sed -i "" 's/ProcessorTransactionId/MasterCardFinancialTransactionId/g' "$file_name"

