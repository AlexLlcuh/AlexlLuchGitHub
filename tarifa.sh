
echo "Introduce el número de llamadas que realizarás:"
read num_llamadas

tarifa_1=100
tarifa_2=50+$(($num_llamadas*1))
tarifa_3=20+$(($num_llamadas*2))

echo "Tarifa 1: $tarifa_1€"
echo "Tarifa 2: $tarifa_2€"
echo "Tarifa 3: $tarifa_3€"

if [ $tarifa_1 -lt $tarifa_2 ] && [ $tarifa_1 -lt $tarifa_3 ]; then
  echo "La tarifa 1 es la más conveniente"
elif [ $tarifa_2 -lt $tarifa_1 ] && [ $tarifa_2 -lt $tarifa_3 ]; then
  echo "La tarifa 2 es la más conveniente"
else [$tarifa_3 -lt $tarifa_1 ] && [$tarifa_3 -lt $tarifa_2 ]; then
  echo "La tarifa 3 es la más conveniente"