if [ "$EUID" -ne 0 ]; then
    echo "Permission denied. Please run as root."
    exit 1
fi

CD=$(pwd)
dSource="${CD}/style.css"

sudo rm -r /etc/xdg/swayosd/style.css

sudo cp -r ${dSource} /etc/xdg/swayosd/

YELLOW='\033[1;33m'
NC='\033[0m'

echo "style.css has been copied to /etc/xdg/swayosd/"
echo -e "${YELLOW}Restart swayosd-server${NC}"
