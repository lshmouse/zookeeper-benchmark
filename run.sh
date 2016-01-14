#!bin/bash
clients=(1 5 10 15 25 50 100)

for i in "${clients[@]}"
do
 echo "Client number: $i"
 sed -i "s/clients=[0-9]\+/clients=$i/g" benchmark.conf
 grep "clients" benchmark.conf
 rm -fr clients-$i
 bash runBenchmark.sh clients-$i
done

for i in "${clients[@]}"
do
 echo "$i" `cat clients-$i/READ.dat | grep "^1" | awk '{ total += $2; count++ } END { print total/count }'` `cat clients-$i/CREATE.dat | grep "^1" | awk '{ total += $2; count++ } END { print total/count }'` `cat clients-$i/DELETE.dat | grep "^1" | awk '{ total += $2; count++ } END { print total/count }'`
done
