
# Install Myanmar Unicode Fonts (Arch)
sudo pacman -S noto-fonts noto-fonts-extra noto-fonts-cjk

# NOT USE: For Myanmar-specific clarity, also grab:
yay -S ttf-padmauk ttf-tharlon ttf-yunghkio


nano ~/.config/hypr/custom/general.conf

ကြိုက်တဲ့ file မှာထည့်လို့ရ။

input {
    kb_layout = us,mm
    kb_options = grp:win_space_toggle
}


hyprctl reload

# Login panel 
sudo pacman -Sy sddm 

## Setup hyprland Dot (End4)

https://github.com/end-4/dots-hyprland

Just run bash <(curl -s https://ii.clsty.link/get)
Or, clone this repo and run ./setup install
See document for details.