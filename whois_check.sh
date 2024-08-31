#!/bin/bash

input="domains_ips.txt"
output="whois_results.txt"

# Очистити попередній файл результатів
> $output

# Виконати whois запит для кожного домену/IP з файлу
while IFS= read -r line
do
  echo "Performing WHOIS for: $line"
  echo "WHOIS result for: $line" >> $output
  whois $line >> $output
  echo "-------------------------------------" >> $output
done < "$input"

echo "Mass WHOIS check completed. Results are saved in $output."
