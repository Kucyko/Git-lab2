if [ "$1" = "--date" ]; then
  date
else
  if [ "$1" = "--log100" ]; then
  	for i in {1..100}
	do
   		echo "Nazwa pliku: log$i.txt, Nazwa skryptu: skrypt.sh, Data: $(date)" > log$i.txt
	done
  else
    echo "Nieprawidłowa flaga";
  fi
fi
