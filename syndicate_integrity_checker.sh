#!/bin/bash

GLOW_GREEN='\033[1;92;42m'
GLOW_YELLOW='\033[1;93;43m'
TEXT_GREEN='\033[1;92m'
GLOW_RED='\033[1;91;41m'
TEXT_RED='\033[1;91m'
SUB_GRAY='\033[0;37m'
RESET='\033[0m'

cd /home/sandaruwan/zenith_workspace/terminal_for_dulain/week_01/day_06/

echo "◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢"
echo "▌ ❖ ALOKA SYNDICATE || INTEGRITY CHECKER v1.0 ❖  ▐"
echo "◣◥◣◥◣◥◣◥◣◥◣◥◣◥◣◥◣◥◣◥◣◥◣◥◣◥◣◥◣◥◣◥◣◥◣◥◣◥◣◥◣◥◣◥◣◥◣◥◣◥"

echo ""
echo ""


if [ "$1" == "-b" ]; then
	if [ ! -f "baseline.hashes"  ]; then
		sha256sum passwords_1.txt passwords_2.txt passwords_3.txt > baseline.hashes
		echo -e "${GLOW_GREEN} SUCCESS ${RESET} ${TEXT_GREEN}File is successfully created!${RESET}"
		echo -e "${SUB_GRAY}by aloka syndicate security checker${RESET}"

	else
		echo -e "${GLOW_GREEN} SUCCESS ${RESET} ${TEXT_GREEN}File already exists!${RESET}"

	fi


elif [ "$1" == "-c" ]; then
	if [ ! -f "baseline.hashes" ]; then
		echo -e "${GLOW_RED} ERROR ${RESET} ${TEXT_RED}File doesn't exist!${RESET}"
		echo -e "${SUB_GRAY}by aloka syndicate security checker${RESET}"

	else
		sha256sum -c baseline.hashes > baseline_hashes_logger.log
		if [ "$(grep -c "OK" "baseline_hashes_logger.log")" -eq 3 ]; then
			echo -e "${GLOW_GREEN} NO ONE HACKED YOUR FILES ${RESET}"

		else
			echo -e "${GLOW_RED} 🚨 [CRITICAL ALERT] TAMPERING DETECTED! Core defense files modified! 🚨 ${RESET}"

		fi
	fi

else
	echo -e "${GLOW_YELLOW} WARN: FLAG NOT FOUND ${RESET}"
fi
