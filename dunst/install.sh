if [ "$EUID" -ne 0 ]; then
    echo "Permission denied. Please run as root."
    exit 1
fi

CD=$(pwd)
dSource="${CD}/dunstrc"

sudo rm -r /etc/dunst/dunstrc

sudo cp -r ${dSource} /etc/dunst/

YELLOW='\033[1;33m'
NC='\033[0m'

echo "dunstrc has been copied to /etc/dunst/"
echo -e "${YELLOW}To restart dunstify run this command : \"pkill -HUP dunst\"${NC}"
