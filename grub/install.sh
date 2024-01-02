if [ "$EUID" -ne 0 ]; then
    echo "Permission denied run as root"
    exit 1
fi

CD=$(pwd)
dSource="${CD}/Tela"

cp -r ${dSource} /usr/share/grub/themes/

YELLOW='\033[1;33m'
NC='\033[0m'

echo Tela has been copied to /usr/share/grub/themes/
echo -e "${YELLOW} Add this line "GRUB_THEME="/usr/share/grub/themes/Tela/theme.txt" to "/etc/default/grub"${NC}"