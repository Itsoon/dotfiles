if [ "$EUID" -ne 0 ]; then
    echo "Permission denied. Please run as root."
    exit 1
fi

CD=$(pwd)
dSource="${CD}/sugar-candy/"

rm -rf /usr/share/sddm/themes/sugar-candy/

cp -r ${dSource} /usr/share/sddm/themes/

YELLOW='\033[1;33m'
NC='\033[0m'

echo sugar-candy has been copied to /usr/share/sddm/themes/
echo -e "${YELLOW}To test sddm in test mode use the following command: sddm --test-mode${NC}"