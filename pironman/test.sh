# meaningless loop to keep the container running

i=0
while [ true ] ; do
    echo "Hello $i"
    i=$((i+1))
    sleep 10
done