#!/bin/bash

LICENSE_FILE="$HOME/.license"

# ANSI escape sequences for colors
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RESET='\033[0m'  # Reset text color to default
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
check_license() {
    if [ -f "$LICENSE_FILE" ]; then
        LICENSE_KEY=$(cat "$LICENSE_FILE")
        if [ "$LICENSE_KEY" == "RAIN" ]; then
            return 0
        fi
    fi
    return 1
}

display_message() {
    clear
    echo ""
    echo ""
    echo ""
    echo -e "${RED}"
    echo "____      _    ___ _   _ __  __  ____"
    echo "|  _ \\    / \\  |_ _| \\ | |  \\/  |/ ___|"
    echo "| |_) |  / _ \\  | ||  \\| | |\\/| | |"
    echo "|  _ <  / ___ \\ | || |\\  | |  | | |___"
    echo "|_| \\_\\/_/   \\_\\___|_| \\_|_|  |_|\\____|"
    echo ""
    echo "          \\ \\/ /"
    echo "           \\  /"
    echo "           /  \\"
    echo "          /_/\\_\\"
    echo ""
    echo "_   _    _    ____ _____  _    ____  _______     __"
    echo "| | | |  / \\  / ___|_   _|/ \\  |  _ \\| ____\\ \\   / /"
    echo "| |_| | / _ \\| |     | | / _ \\ | | | |  _|  \\ \\ / /"
    echo "|  _  |/ ___ \\ |___  | |/ ___ \\| |_| | |___  \\ V /"
    echo "|_| |_/_/   \\_\\____| |_/_/   \\_\\____/|_____|  \\_/"
    echo -e "${RESET}"
    echo ""
    echo ""
    echo -e "${BLUE}                    WHATSAPP : 085263390832${RESET}"
    echo -e "${YELLOW}                    YOUTUBE  : RAINMC${RESET}"
    echo ""
}

if check_license; then
    display_message
    install_software
    animate_text "𝖯𝖮𝖶𝖤𝖱𝖤𝖣 𝖡𝖸 𝖱𝖠𝖨𝖭𝖬𝖢"
else
    echo "Masukkan lisensi Anda:"
    read -r LICENSE_KEY
    echo "$LICENSE_KEY" > "$LICENSE_FILE"
    check_license
    if [ $? -eq 0 ]; then
        display_message
        install_software
        animate_text "𝖯𝖮𝖶𝖤𝖱𝖤𝖣 𝖡𝖸 𝖱𝖠𝖨𝖭"
    else
        echo "Lisensi tidak valid."
        exit 1
    fi
fi
