readonly THEME_NAME="sddm-theme"
readonly THEMES_DIR="/usr/share/sddm/themes"
readonly METADATA="$THEMES_DIR/$THEME_NAME/metadata.desktop"
readonly DATE=$(date +%s)

src="$HOME/dotfiles/$THEME_NAME"
dst="$THEMES_DIR/"

echo "$src"

sudo rm -rf "$dst"
sudo mkdir -p "$dst"
sudo cp -r "$src" "$dst"

# Configure SDDM
echo "[Theme]
Current=$THEME_NAME" | sudo tee /etc/sddm.conf >/dev/null

echo "Done"

#sudo chown root "$dst"
#sudo chmod 777 "$dst"

