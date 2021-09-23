for i in $(ip a | awk -F': ' '{print $2}' | awk '!/^$|lo/')
do
  echo "###$i###" 
  ethtool -g $i 
  echo -e "\n" 
done