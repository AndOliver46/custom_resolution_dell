# Script for adding Ultrawide (2560x1080) resolution to connected monitors.
## (Tested in Ubuntu 22.04)

This script is tailored for all devices with limited HDMI output, allowing users to disable Wayland and add an ultrawide resolution (2560x1080) to their monitors. It's especially useful for Dell users facing issues like resolution limitation.

## Prerequisites

- Linux with Xorg support
- Root privileges to execute the script

## Usage

1. Download a script version from releases section of this repository;

2. Open your terminal on the downloaded script folder:
```
$ cd your-folder
```
3. Make the script executable:
```
$ chmod +x ultrawide_mode.sh
```
4. Run the script as root:
```
$ sudo ./ultrawide_mode.sh
```
5. Follow the on-screen instructions provided by the script.

6. Restart your computer to apply the changes.

## Disclaimer

- Use this script at your own risk. Ensure you understand its functionality and implications before running it on your system.
- Always back up important data before making system-level changes.
- The script may require modifications based on your system configuration or requirements.

## License

This project is licensed under the [MIT License](LICENSE).
