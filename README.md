# WHOIS Mass Checker

This Bash script allows you to perform a mass WHOIS check on a list of domains and IP addresses. It reads input from a text file containing domains or IP addresses and outputs the WHOIS information to a specified output file.

## Features

- **Mass WHOIS Lookup**: Perform WHOIS queries on a large list of domains or IP addresses.
- **Simple Output**: The results are saved in a plain text file with separators for easy reading.
- **Flexible Input**: Works with both domain names and IP addresses.

## Prerequisites

- **Bash**: The script is written in Bash and should work on any Unix-like operating system.
- **WHOIS Command**: Ensure that the `whois` command is available on your system. It is typically pre-installed on most Linux distributions. If not, you can install it using your package manager:

  ```bash
  sudo apt-get install whois  # Debian/Ubuntu
  sudo yum install whois      # CentOS/RHEL
  sudo pacman -S whois        # Arch Linux

## File Structure

- `domains_ips.txt`: A text file containing a list of domains and/or IP addresses, one per line.
- `whois_check.sh`: The Bash script that performs the WHOIS lookup.
- `whois_results.txt`: The output file where WHOIS results are saved.

## How to Use

1. **Prepare the IP List**: Create a file named `domains_ips.txt` in the same directory as the script. Add each domain or IP address on a new line.

2. **Run the Script**: Execute the script by running the following command in your terminal:

   ```bash
   ./whois_check.sh

3. **View the Results**: After the script finishes running, check the whois_results.txt file for the WHOIS output. The results will include the WHOIS information for each domain or IP address listed in domains_ips.txt.

## Notes

- **WHOIS Rate Limits**: Some WHOIS servers may rate-limit requests. If you have a large list, you might need to add a delay between requests.
- **Output File**: The script will append new results to `whois_results.txt`. If you want a fresh start, consider deleting or renaming the existing `whois_results.txt` file before running the script.
