#!/bin/bash

# === Setup ===
report="password_strength_report.txt"
passwords="password_list.txt"
echo "Password Strength Report - $(date)" > "$report"
echo "-----------------------------------" >> "$report"

# === Step 1: Create password list ===
echo "[+] Creating password list..."
cat <<EOF > "$passwords"
SimplePass123
P@ssw0rd!
Th1sIs$Strong#Pass2025
123456
Qwerty@789
Complex#Key$With%Symbols123
EOF

# === Step 2: Check strength using cracklib-check ===
echo "[+] Checking password strength..."
while read -r password; do
    clean_pass=$(echo "$password" | tr -d '"')
    echo -e "\nPassword: $clean_pass" >> "$report"
    result=$(echo "$clean_pass" | cracklib-check)
    echo "Feedback: $result" >> "$report"
done < "$passwords"

# === Step 3: Summary ===
echo -e "\nBest Practices Learned:" >> "$report"
echo "- Use 12+ characters." >> "$report"
echo "- Mix uppercase, lowercase, numbers, and symbols." >> "$report"
echo "- Avoid dictionary words and common patterns." >> "$report"
echo "- Never reuse passwords across accounts." >> "$report"

echo -e "\nCommon Password Attacks:" >> "$report"
echo "- Brute Force: Tries every possible combination." >> "$report"
echo "- Dictionary Attack: Uses known words and patterns." >> "$report"
echo "- Credential Stuffing: Uses leaked passwords from breaches." >> "$report"
echo "- Complexity slows down brute force and defeats dictionary-based guesses." >> "$report"

echo "[+] Report saved to $report"
