sudo apt install python3-nautilus tilix
pip3 install --user nautilus-open-any-terminal
glib-compile-schemas ~/.local/share/glib-2.0/schemas/
gsettings set com.github.stunkymonkey.nautilus-open-any-terminal terminal tilix
gsettings set com.github.stunkymonkey.nautilus-open-any-terminal new-tab true
gsettings set org.gnome.desktop.default-applications.terminal exec tilix
nautilus -q
