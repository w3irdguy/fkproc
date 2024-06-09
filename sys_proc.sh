#!/bin/bash
who=$(whoami)
if [ ! "$who" == "root" ]
then
	echo "YOU NEED TO RUN WAS ADMINISTRATOR(sudo)"
else
	echo "boot before mnt"
	mnt(){
                PS1='linuxbootinterface~# '
                case $1 in
                        dir)
                                if [ -z $2 -a -z $3]
                                then
                                        echo "YOU NEED TO SELECT AN SOURCE AND DESTINATION"
				elif [ -z $2 -o -z $3 ]
                                then
					echo "YOU NEED TO SELECT AN SOURCE AND DESTINATION"
                                else
                                        if [ -d "/boot" ]
                                        then
                                                echo -e "\033[97m>>>>Starting Root Mount...\033[0m"
                                                sleep 3
                                                echo -e "\033[92m>>>>Succefully Operation!\033[0m"
                                                sleep 2
                                                echo "You mounted $3 in $2"
                                        else
                                                echo -e "\033[91m BOOT PARTITION NOT FOUNDED!\033[0m"
                                                sleep 5
                                                echo "Ending operation..."
                                        fi
                                fi
                        ;;
                        test)
                                echo -e "\033[93mTesting If Boot Files Are Valid...\033[0m"
                                sleep 5
                                echo -e "\033[92m No one error has ocurred!\033[0m"
                        ;;
                        start)
				echo -e "\033[93mTesting If Boot Files Are Valid...\033[0m"
				sleep 1
				echo -e "\033[92mNo error founded in boot files\033[0m"
				sleep 2
				echo -e "\033[91mTry dont cancel this operation below...\033[0m"
				sleep 4
				echo -e "\033[92mboot partitions mounted\033[0m"
				sleep 0.5
				echo -e "\033[92mboot partitions are valid\033[0m"
				sleep 0.4
				echo -e "\033[92minternal storage ready\033[0m"
				sleep 0.5
				echo -e "\033[92miso file ready\033[0m"
				sleep 0.5
				echo -e "\033[93mstarting apt update\033[0m"
				sleep 1
                                echo -e "\033[92mall files are up to date\033[0m"
                                sleep 0.5
                                echo -e "\033[93mstarting apt upgrade\033[0m"
                                sleep 1
                                echo -e "\033[92mall files upgraded\033[0m"
                                sleep 0.5
                                echo -e "\033[93mtesting procs\033[0m"
                                sleep 0.4
                                echo -e "\033[92msucess\033[0m"
                                sleep 0.5
                                echo -e "\033[93mtesting boot images\033[0m"
                                sleep 0.5
                                echo -e "\033[92msuccess\033[0m"
                                sleep 0.5
                                echo -e "\033[96mall packages downloaded\033[0m"
                                sleep 1
                                echo -e "\033[93mTesting If Boot Files Are Valid...\033[0m"
                                sleep 2
                                echo -e "\033[93mTesting If Boot Files Are Valid...\033[0m"
                                sleep 0.5
                                echo -e "\033[93mTesting If Boot Files Are Valid...\033[0m"
                                sleep 0.5
                                echo -e "\033[93mTesting If Boot Files Are Valid...\033[0m"
                                sleep 0.4
                                echo -e "\033[93mTesting If Boot Files Are Valid...\033[0m"
                                sleep 0.5
                                echo -e "\033[93mTesting If Boot Files Are Valid...\033[0m"
                                sleep 0.5
                                echo -e "\033[93mTesting If Boot Files Are Valid...\033[0m"
                                sleep 0.5
                                echo -e "\033[93mTesting If Boot Files Are Valid...\033[0m"
				sleep 0.5
				echo -e "\033[93mTesting If Boot Files Are Valid...\033[0m"
				sleep 4
				echo -e "\033[93mTesting If Boot Files Are Valid...\033[0m"
                                sleep 1
                                echo -e "\033[92mNo error founded in newest boot files\033[0m"
				sleep 0.5
                                echo -e "\033[92mboot partitions mounted\033[0m"
                                sleep 0.5
                                echo -e "\033[92mboot partitions are valid\033[0m"
                                sleep 0.4
                                echo -e "\033[92minternal storage ready\033[0m"
                                sleep 0.5
                                echo -e "\033[92miso file ready\033[0m"
                                sleep 0.5
                                echo -e "\033[93mstarting apt update\033[0m"
                                sleep 0.5
                                echo -e "\033[92mall files are up to date\033[0m"
                                sleep 0.5
                                echo -e "\033[93mstarting apt upgrade\033[0m"
                                sleep 0.5
                                echo -e "\033[92mall files upgraded\033[0m"
                                sleep 0.5
                                echo -e "\033[93mtesting procs\033[0m"
                                sleep 0.4
                                echo -e "\033[92msucess\033[0m"
                                sleep 0.5
                                echo -e "\033[93mtesting boot images\033[0m"
                                sleep 0.5
                                echo -e "\033[92msuccess\033[0m"
                                sleep 0.5
                                echo -e "\033[96mall packages downloaded\033[0m"
                                sleep 0.5
                                echo -e "\033[93mtesting sbin.\033[0m"
                                sleep 0.5
                                echo -e "\033[93mtesting sbin...\033[0m"
                                sleep 0.5
                                echo -e "\033[93mtesting temp\033[0m"
                                sleep 0.5
                                echo -e "\033[93mtesting dev\033[0m"
                                sleep 0.4
                                echo -e "\033[93mtesting media\033[0m"
                                sleep 0.5
                                echo -e "\033[93mtesting bin\033[0m"
                                sleep 0.5
                                echo -e "\033[93mtesting mnt\033[0m"
                                sleep 0.5
                                echo -e "\033[93mtesting vmlinuz\033[0m"
                                sleep 0.5
				echo -e "\033[92mSUCCESS, shutdowning...\033[0m"
				sleep 3

                        ;;
                        /help)
                                echo -e "mnt >usage< \n \n mnt [PARAMETERS] \n dir, test, start"
                        ;;
                        *)
                                echo "Try /help for more instructions..."
                        ;;
                esac
        }

	boot(){
		PS1='linuxbootinterface~# '
		case $1 in
			change)
				if [ -z $2 ]
				then
					echo "YOU NEED TO SELECT A DESTINATION"
				else
					if [ -d "/boot" ]
					then
						echo -e "\033[97m>>>>Starting Switch...\033[0m"
						sleep 3
						echo -e "\033[92m>>>>Succefully Operation!\033[0m"
						sleep 2
						echo "The file config-6.6.15-amd64 was been changed to config-7.0.1-amd64"
					else
						echo -e "\033[91m BOOT PARTITION NOT FOUNDED!\033[0m"
						sleep 5
						echo "Ending operation..."
					fi
				fi
			;;
			info)
				echo -e "\033[93mRequesting Boot Informations\033[0m"
				sleep 5
				ls -la "/boot"
			;;
			bios)
				echo -e "\033[91mYOU NEED TO POWER OFF THE COMPUTER \033[0m"
				read -p "Do you REALLY want to shudown now?(y/n)" var
				if [ "$var" == "n" ]
				then
					echo "operation cancelled by user"
				elif [ "$var" == "y" ]
				then
					for i in $(seq 5)
					do
						echo -en "SHUTDOWN in "
						echo -en "\r \r $i"
					done
					echo "shutdown"
				else
					echo "nothing"
				fi
			;;
			/help)
				echo -e "boot >usage< \n \n boot [PARAMETERS] \n change, info, bios"
			;;
			*)
				echo "Try /help for more instructions..."
			;;
		esac
	}

fi
