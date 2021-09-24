set -x EDITOR vim
echo
neofetch
function ms
  sudo mount UUID=ce5f0b82-2253-405b-bb85-1d3d81c31dca /home/pvtman/homey
end

function mr
  sudo umount UUID=ce5f0b82-2253-405b-bb85-1d3d81c31dca /home/pvtman/homey
end

function swappy
  sudo swapon /dev/sda6
end

function evolve
  sudo pacman -Syy
  yay
end

function crypt-opener
  sudo cryptsetup luksOpen $argv
end

function crypt-closer
  sudo cryptsetup luksClose $argv
end

function lsa
  ls -lah
end

function fish_greeting
end


function yesorno
  random choice "yes" "no"
end

function a
  clear
end

function aa
  cd ~
  clear
end

function u
  paru
end

function reboot
  yay
  reboot
end
function manjaro-mount
  sudo mount /dev/sda7 /mnt
  sudo mount /dev/sda6 /mnt/boot
  sudo mount /dev/sda8 /mnt/home
  sudo umount /home/joe/mnt-home
  sudo arch-chroot /mnt
end

function manjaro-umount
  sudo umount /dev/sda6 /mnt/boot
  sudo umount /dev/sda8 /mnt/home
  sudo umount /dev/sda7 /mnt
  sudo mount /dev/sda8 /home/joe/mnt-home
end


function theme-switch-colour
  . /home/joe/theme-switch-colour
end

function theme-switch-black
  . /home/joe/theme-switch-black
end


function ranger-switch
  . /home/joe/ranger-switch
end

function windows-vm-mount
  . /home/joe/windows-vm-mount
end


function sudop
  doas $argv
end
python3 schedule.py

