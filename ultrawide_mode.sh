#!/bin/bash

# Check if the script is run with root privileges
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

# Disable Wayland by uncommenting the appropriate line in the GDM configuration
sed -i 's/#WaylandEnable=false/WaylandEnable=false/' /etc/gdm3/custom.conf

echo "Wayland has been disabled."

# List connected monitors
xrandr --listmonitors

echo

# Prompt user to input the monitor name
read -p "Type the monitor name (Eg. HDMI-1) that you want to add 2560x1080 resolution : " monitor

# Create the script file with the resolved monitor variable
cat > /etc/profile.d/ultrawide.sh <<EOF
#!/bin/bash

# Add the custom mode
xrandr --newmode "2560x1080x53.92" 162.500000 2560 2608 2640 2720 1080 1083 1087 1108 +HSync -VSync
xrandr --addmode $monitor "2560x1080x53.92"

# Apply the custom mode
xrandr --output $monitor --mode "2560x1080x53.92"
EOF

# Give execute permissions to the script file
chmod +x /etc/profile.d/ultrawide.sh

echo "Restart your computer! Enjoy :)"
