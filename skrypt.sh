if [ "$1" = "--date" || "$1" = "-d" ]; then
  date
else
  if [ "$1" = "--log100" || "$1" = "-l100" ]; then
  	for i in {1..100}
	do
   		echo "Nazwa pliku: log$i.txt, Nazwa skryptu: skrypt.sh, Data: $(date)" > log$i.txt
	done
  else
    if [ "$1" = "--log30" || "$1" = "-l30" ]; then
  	  for i in {1..30}
	  do
   		echo "Nazwa pliku: log$i.txt, Nazwa skryptu: skrypt.sh, Data: $(date)" > log$i.txt
	  done
	else
	  if [ "$1" = "--help" || "$1" = "-h" ]; then
  	    echo "--date lub -d: wyświetla date"
		echo "--log100 lub -l100: tworzy 100 plikow log txt"
		echo "--log30 lub -l30: tworzy 30 plików log txt"
		echo "--init: Klonuje repozytorium"
		echo "-err30 lub -e30: Tworzy 100 plików error"
	  else
	    if [ "$1" = "--init" ]; then
  
			git clone https://github.com/Kucyko/Git-lab2

  
			echo "export PATH=\"\$PATH:$(pwd)/twoj-repozytorium\"" >> ~/.bashrc
			source ~/.bashrc

			echo "Repozytorium sklonowane i ścieżka dodana do PATH"
        else
            if [[ "$1" = "--err30" || "$1" = "-e30" ]]; then
				for i in {1..100}
				do
				echo "Nazwa pliku: error$i.txt, Nazwa skryptu: skrypt.sh, Data: $(date)" > error$i.txt
				done
			else
				echo "Nieprawidłowa flaga"
			
			fi
		fi
	  fi
	fi
  fi
fi
