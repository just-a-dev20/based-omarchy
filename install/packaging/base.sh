# Install all base packages
mapfile -t packages < <(grep -v '^#' "$OMARCHY_INSTALL/omarchy-base.packages" | grep -v '^$')
sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm --needed "${packages[@]}"
