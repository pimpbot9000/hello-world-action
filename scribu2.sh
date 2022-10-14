inputs='{"input-who-to-greet": "Tumppu", "input-data": "Dumppu"}'
keys=$(echo $inputs | jq -r ". | keys[]" )
#entries=$(echo $inputs | jq ' to_entries')
#echo $entries

for k in $keys; do
     
     #export var k into jq contxt as key
     value=$(echo $inputs | jq --arg key "$k" -r '.[$key]')
     #echo "$k :  $value"
     input_caps=${k^^}
     env_var=${input_caps##INPUT-}
     echo $env_var
done

