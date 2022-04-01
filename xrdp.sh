echo "====================="
echo "SETTING NGROK WES MARI"
echo "====================="
echo ""
echo ""
sudo apt install lxde > /dev/null 2>&1
sudo apt install -y xrdp > /dev/null 2>&1
sudo sed -i.bak '/fi/a lxde-session \n' /etc/xrdp/startwm.sh > /dev/null 2>&1
echo "======================"
echo "INSTALLING RDP WES MARI"
echo "======================"
echo ""
echo ""
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A6DCF7707EBC211F > /dev/null 2>&1
sudo apt-add-repository "deb http://ppa.launchpad.net/ubuntu-mozilla-security/ppa/ubuntu bionic main" > /dev/null 2>&1
sudo apt-get update > /dev/null 2>&1
sudo apt-get install firefox -y > /dev/null 2>&1
echo "================-======"
echo "INSTALLING FIREFOX WES MARI"
echo "======================="
echo ""
echo ""
echo "> WAIT FOR COMPLETE PROGRESS <"
sudo apt install apt-transport-https curl > /dev/null 2>&1
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg > /dev/null 2>&1
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list > /dev/null 2>&1
sudo apt update > /dev/null 2>&1
sudo apt install brave-browser > /dev/null 2>&1
sudo service xrdp start > /dev/null 2>&1
echo ""
echo ""
echo "======================"
echo "YOUR X-RDP INFO"
echo "======================"
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "Username: jancok"
echo "Password: jancok"
echo "==========================="
echo ""

echo "NOTE: Don't close this tab to keep your RDP still running"
sleep 98765432109876543210
