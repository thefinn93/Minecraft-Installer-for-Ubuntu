#!/bin/bash
mkdir $HOME/.local/minecraft
mkdir -p $HOME/.local/share/applications
echo "Downloading Minecraft..."
wget -O $HOME/.local/minecraft/minecraft.jar https://s3.amazonaws.com/MinecraftDownload/launcher/minecraft.jar
echo "Downloading icon..."
wget -O $HOME/.local/minecraft/minecraft.png http://www.minecraft.net/favicon.png
echo "Installing desktop entry..."
echo "[Desktop Entry]" > $HOME/.local/share/applications/minecraft.desktop
echo "Name=Minecraft" >> $HOME/.local/share/applications/minecraft.desktop
echo "Comment=Place blocks and build anything you can imagine!" >> $HOME/.local/share/applications/minecraft.desktop
echo "Exec=java -jar $HOME/.local/minecraft/minecraft.jar" >> $HOME/.local/share/applications/minecraft.desktop
echo "Icon=$HOME/.local/minecraft/minecraft.png" >> $HOME/.local/share/applications/minecraft.desktop
echo "Terminal=false" >> $HOME/.local/share/applications/minecraft.desktop
echo "Type=Application" >> $HOME/.local/share/applications/minecraft.desktop
echo "Categories=Application;Game;" >> $HOME/.local/share/applications/minecraft.desktop
chmod +x $HOME/.local/share/applications/minecraft.desktop
