#!/bin/bash
### ccr.sh dennis.hempler@gmail.com
### requires curl and jq installed and in your PATH

### place crypto in the order you want them displyed
CCLIST="ENT LTC XMR ETH BTC IOTA SALT"


for COIN in $( echo "$CCLIST" ) ;
do

printf "$COIN \t" 

curl -s "https://min-api.cryptocompare.com/data/price?fsym=$COIN&tsyms=THE,USD" | jq .USD

done

exit 0
