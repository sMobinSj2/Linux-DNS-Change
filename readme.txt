# DNS Change Script

A Bash script to easily configure DNS servers on Linux systems with support for multiple DNS providers and configuration options.

## Features

- Support for multiple DNS providers:
  - Google DNS (8.8.8.8, 8.8.4.4)
  - Shecan DNS (185.51.200.2, 178.22.122.100)
  - Cloudflare DNS (1.1.1.1, 1.0.0.1)
  - Custom DNS servers
- Options for temporary or permanent DNS configuration
- Automatic handling of systemd-resolved and NetworkManager
- Comprehensive error handling and status feedback
- Root privilege verification

## Prerequisites

- Linux operating system
- NetworkManager
- Root privileges (sudo access)

## Installation

1. Clone this repository:
```bash
git clone https://github.com/yourusername/dns-change.git
```

2. Make the script executable:
```bash
chmod +x main.sh
```

## Usage

Run the script with sudo privileges:

```bash
sudo ./main.sh
```

Follow the interactive prompts to:
1. Choose your DNS provider
2. Select temporary or permanent configuration

### Configuration Options

- **Temporary**: Changes will be lost after system reboot
- **Permanent**: Changes persist across reboots (uses NetworkManager)

### Available DNS Providers

1. Google DNS (Default)
   - Primary: 8.8.8.8
   - Secondary: 8.8.4.4

2. Shecan DNS
   - Primary: 185.51.200.2
   - Secondary: 178.22.122.100

3. Cloudflare DNS
   - Primary: 1.1.1.1
   - Secondary: 1.0.0.1

4. Custom DNS
   - Enter your own DNS servers

## Verification

After configuration, the script will display the current DNS settings using:
- `cat /etc/resolv.conf`
- `nmcli connection show <connection_name> | grep dns`

## Notes

- Temporary changes are written directly to `/etc/resolv.conf`
- Permanent changes are configured through NetworkManager
- The script automatically handles systemd-resolved if it's running
- Root privileges are required for DNS configuration

## License

[Your chosen license]

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.