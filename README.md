# 🎨 My Arch Linux Dotfiles

A clean and functional i3wm setup with Catppuccin Mocha color scheme, featuring polybar, rofi, and picom for a polished desktop experience.

## ✨ Features

- **Window Manager:** i3wm with 1px borders and smart gaps
- **Status Bar:** Polybar with custom modules
- **Application Launcher:** Rofi with custom theme
- **Compositor:** Picom with rounded corners and smooth animations
- **Terminal:** Kitty
- **Color Scheme:** Catppuccin Mocha throughout all applications
- **Audio Visualizer:** Cava (if you use it)

## 🔧 Components

| Component | Description |
|-----------|-------------|
| **WM** | i3-wm (i3-gaps features) |
| **Bar** | Polybar |
| **Compositor** | Picom (GLX backend) |
| **Launcher** | Rofi |
| **Terminal** | Kitty |
| **Shell** | (Add your shell here) |
| **Font** | MesloLGS Nerd Font, Figtree |
| **Theme** | Catppuccin Mocha |

## 📦 Dependencies

### Required Packages

Install all required packages from official repositories:

```bash
sudo pacman -S i3-wm picom polybar rofi kitty feh maim xclip xdotool \
               brightnessctl xorg-xrdb i3lock xss-lock network-manager-applet \
               pulseaudio pavucontrol dex
```

### Fonts

Install required fonts (using an AUR helper like `yay` or `paru`):

```bash
yay -S ttf-meslo-nerd-font-powerlevel10k ttf-figtree
```

Or from official repos:
```bash
sudo pacman -S ttf-firacode-nerd ttf-font-awesome
```

### Optional but Recommended

```bash
sudo pacman -S dunst               # Notification daemon
sudo pacman -S thunar              # File manager
sudo pacman -S nitrogen            # Alternative wallpaper setter
sudo pacman -S lxappearance        # GTK theme manager
sudo pacman -S cava                # Audio visualizer
```

## 🚀 Installation

### 1. Backup Your Existing Configs

```bash
mkdir -p ~/dotfiles-backup
cp -r ~/.config/i3 ~/dotfiles-backup/
cp -r ~/.config/polybar ~/dotfiles-backup/
cp -r ~/.config/rofi ~/dotfiles-backup/
cp -r ~/.config/picom ~/dotfiles-backup/
```

### 2. Clone This Repository

```bash
git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

### 3. Copy Configuration Files

```bash
# Create config directories if they don't exist
mkdir -p ~/.config/{i3,polybar,rofi,picom}

# Copy configurations
cp -r i3/* ~/.config/i3/
cp -r polybar/* ~/.config/polybar/
cp -r rofi/* ~/.config/rofi/
cp i3/picom.conf ~/.config/i3/
```

### 4. Make Polybar Launch Script Executable

```bash
chmod +x ~/.config/polybar/launch.sh
```

### 5. Set Up Wallpaper

```bash
mkdir -p ~/Pictures/Wallpapers
# Copy your wallpaper to the directory
cp /path/to/your/wallpaper.jpg ~/Pictures/Wallpapers/
```

Update the wallpaper path in `~/.config/i3/config`:
```bash
exec_always --no-startup-id feh --bg-scale ~/Pictures/Wallpapers/your-wallpaper.jpg
```

### 6. Reload i3

Press `$mod+Shift+r` or restart your X session.

## ⌨️ Keybindings

### General

| Keybinding | Action |
|------------|--------|
| `Super + Return` | Open terminal (Kitty) |
| `Super + Shift + q` | Kill focused window |
| `Super + Shift + c` | Reload i3 config |
| `Super + Shift + r` | Restart i3 |
| `Super + Shift + e` | Exit i3 |

### Application Launcher (Rofi)

| Keybinding | Action |
|------------|--------|
| `Alt + a` | Launch applications (drun mode) |
| `Alt + Space` | Combined launcher (combi mode) |
| `Alt + Tab` | Window switcher |

### Window Navigation

| Keybinding | Action |
|------------|--------|
| `Super + h/j/k/l` | Focus left/down/up/right |
| `Super + Arrow keys` | Focus direction (alternative) |
| `Super + Shift + h/j/k/l` | Move window left/down/up/right |
| `Super + Shift + Arrow keys` | Move window (alternative) |
| `Super + f` | Toggle fullscreen |
| `Super + Shift + Space` | Toggle floating |

### Workspaces

| Keybinding | Action |
|------------|--------|
| `Super + 1-9` | Switch to workspace 1-9 |
| `Super + d` | Switch to workspace 10 |
| `Super + Shift + 1-9` | Move container to workspace 1-9 |
| `Super + Shift + 0` | Move container to workspace 10 |

### Layouts

| Keybinding | Action |
|------------|--------|
| `Super + s` | Stacking layout |
| `Super + w` | Tabbed layout |
| `Super + e` | Toggle split layout |

### System Controls

| Keybinding | Action |
|------------|--------|
| `Super + =` / `Super + +` | Increase volume 5% |
| `Super + -` | Decrease volume 5% |
| `Super + 0` | Toggle mute |
| `XF86AudioRaiseVolume` | Increase volume 10% |
| `XF86AudioLowerVolume` | Decrease volume 10% |
| `XF86AudioMute` | Toggle mute |
| `XF86MonBrightnessUp` | Increase brightness 5% |
| `XF86MonBrightnessDown` | Decrease brightness 5% |

### Screenshots

| Keybinding | Action |
|------------|--------|
| `Print` | Screenshot entire screen |
| `Super + Print` | Screenshot active window |
| `Shift + Print` | Screenshot selection |
| `Ctrl + Print` | Screenshot to clipboard |
| `Ctrl + Super + Print` | Active window to clipboard |
| `Ctrl + Shift + Print` | Selection to clipboard |

### Resize Mode

| Keybinding | Action |
|------------|--------|
| `Super + r` | Enter resize mode |
| `j / Left` | Shrink width |
| `k / Down` | Grow height |
| `l / Up` | Shrink height |
| `; / Right` | Grow width |
| `Enter / Escape` | Exit resize mode |

## 🎨 Customization

### Change Colors

The color scheme uses Catppuccin Mocha. To change colors, edit the color variables at the bottom of `~/.config/i3/config`:

```bash
set $rosewater #f5e0dc
set $mauve     #cba6f7
set $red       #f38ba8
# ... etc
```

### Modify Polybar

Edit `~/.config/polybar/config.ini` to customize modules, fonts, or colors.

### Customize Rofi

Edit `~/.config/rofi/config.rasi` to change the launcher appearance.

### Picom Effects

Edit `~/.config/i3/picom.conf` to adjust:
- Corner radius (currently 10px)
- Shadow settings
- Fade animations
- Opacity settings

## 🐛 Troubleshooting

### Polybar not loading

Make sure the launch script is executable:
```bash
chmod +x ~/.config/polybar/launch.sh
```

### Loading cursor appears after commands

The configs use `--no-startup-id` flag to prevent this. If it still occurs, check your i3 config for any missing flags.

### Rofi not appearing

Check if rofi is installed and the config file path is correct:
```bash
rofi -show drun
```

### Picom transparency not working

Ensure your graphics drivers support compositing:
```bash
glxinfo | grep "direct rendering"
```

### Fonts not displaying correctly

Install the required Nerd Fonts:
```bash
yay -S ttf-meslo-nerd-font-powerlevel10k ttf-figtree
```

Then reload i3 with `Super + Shift + r`.

## 📁 Directory Structure

```
~/.config/
├── i3/
│   ├── config          # Main i3 configuration
│   └── picom.conf      # Compositor configuration
├── polybar/
│   ├── config.ini      # Polybar configuration
│   └── launch.sh       # Polybar launch script
├── rofi/
│   └── config.rasi     # Rofi theme configuration
└── cava/
    └── config          # Audio visualizer config (if applicable)
```

## 🤝 Contributing

Feel free to fork this repository and submit pull requests for any improvements!

## 📝 License

This project is open source and available under the [MIT License](LICENSE).

## 🙏 Credits

- **i3wm** - [i3wm.org](https://i3wm.org/)
- **Polybar** - [github.com/polybar/polybar](https://github.com/polybar/polybar)
- **Catppuccin Theme** - [github.com/catppuccin/catppuccin](https://github.com/catppuccin/catppuccin)
- **Rofi** - [github.com/davatorium/rofi](https://github.com/davatorium/rofi)
