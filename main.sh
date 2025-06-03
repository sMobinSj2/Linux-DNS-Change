#! /bin/bash
# This script configures DNS servers on a Linux system.

# Default DNS values
DEFAULT_DNS1="8.8.8.8"    # Google DNS
DEFAULT_DNS2="8.8.4.4"    # Google DNS secondary

{ echo "Enter The First Dns Server Ip Address (press Enter for default): "; read dns1;}
{ echo "Enter The Second Dns Server Ip Address (press Enter for default): "; read dns2;}

# Check if DNS values are empty and assign defaults if needed
dns1=${dns1:-$DEFAULT_DNS1}
dns2=${dns2:-$DEFAULT_DNS2}

dns_config_file="
nameserver ${dns1}
nameserver ${dns2}
"
echo "Configuring DNS servers..."

echo "${dns_config_file}" | sudo tee /etc/resolv.conf

echo "DNS servers configured successfully."
cat /etc/resolv.conf
echo "To make these changes permanent, consider adding them to your network configuration files."
# Note: The above script modifies /etc/resolv.conf, which is typically used for DNS resolution.
# Depending on your Linux distribution, you may need to make additional changes to ensure these settings persist across reboots.