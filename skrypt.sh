if [[ "$1" = "--date" || "$1" = "-d" ]]; then
  date
else
  if [[ "$1" = "--log100" || "$1" = "-l100" ]]; then
  	for i in {1..100}
	do
   		echo "Nazwa pliku: log$i.txt, Nazwa skryptu: skrypt.sh, Data: $(date)" > log$i.txt
	done
  else
    if [[ "$1" = "--log30" || "$1" = "-l30" ]]; then
  	  for i in {1..30}
	  do
   		echo "Nazwa pliku: log$i.txt, Nazwa skryptu: skrypt.sh, Data: $(date)" > log$i.txt
	  done
	else
	  if [[ "$1" = "--help" || "$1" = "-h" ]]; then
  	    echo "--date lub -d: wyświetla date"
		echo "--log100 lub -l100: tworzy 100 plikow log txt"
		echo "--log30 lub -l30: tworzy 30 plików log txt"
	  else
	    echo "Nieprwidłowa flaga";
	  fi
	fi
  fi
fi
