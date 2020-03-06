#!/bin/bash
echo "У вас должен быть установлен sshpass! [sudo apt install sshpass]"
echo "Выберите:"
echo "1) United Porte [dev]"
echo "2) United Porte [live]"
echo "3) Essenz Shop  [live/test]"
echo "4) Interior     [live]"
echo "5) ---------- Unset ---------- "
echo "6) ---------- Unset ---------- "
echo "7) ---------- Unset ---------- "
echo "8) ---------- Unset ---------- "
echo "9) ---------- Unset ---------- "
echo "0) Выход"
read doing #здесь мы читаем в переменную $doing со стандартного ввода

case $doing in
	0)exit 0;;
	1)sshpass -p 'azFOQo3FO8' ssh unitedporte@46.4.18.101;; 			# United Porte [dev]
	2)sshpass -p 'DemvofyadBerkuv3' ssh umagento@157.230.176.229;; 			# United Porte [live]
	3)sshpass -p 'eYuQL:Cyiu1VA@a8Sfv3' ssh essenab9@5.132.161.139 -p 12488;; 	# Essenz Shop  [live/test]
	4)sshpass -p '3u6-I6i285tn3kXr0l4e' ssh www-dev1@144.76.80.47;; 		# Interior     [live]
	5)sshpass -p '' ssh username@host;;
	6)sshpass -p '' ssh username@host;;
	7)sshpass -p '' ssh username@host;;
	8)sshpass -p '' ssh username@host;;
	9)sshpass -p '' ssh username@host;;
	*) #если введено с клавиатуры то, что в case не описывается, выполнять следующее:
echo "No such variants..."
esac #окончание оператора case.

