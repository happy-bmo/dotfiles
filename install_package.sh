#!/bin/bash

# Danh sách các package cần kiểm tra và cài đặt
packages=(
  btop
  cava
  chromium
  fastfetch
  fcitx
  fcitx5
  go
  hyprland # giả định "hypr" là hyprland
  kitty
  mako
  neovim # giả định "nvim"
  pulseaudio
  starship
  swaylock
  thunar
  waybar
  wlogout
  wofi
  xfce4
)

# Kiểm tra yay đã được cài chưa
if ! command -v yay &>/dev/null; then
  echo "❌ 'yay' chưa được cài. Vui lòng cài yay trước."
  exit 1
fi

# Hàm kiểm tra và cài đặt package
install_package() {
  if pacman -Qi "$1" &>/dev/null || yay -Qi "$1" &>/dev/null; then
    echo "✅ Package '$1' đã được cài. Bỏ qua."
  else
    echo "📦 Đang cài đặt '$1'..."
    yay -S --noconfirm "$1"
  fi
}

# Lặp qua từng package
for pkg in "${packages[@]}"; do
  install_package "$pkg"
done

echo "🎉 Tất cả package đã được kiểm tra và xử lý xong!"
