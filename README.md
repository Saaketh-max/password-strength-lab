# password-strength-lab
# 🔐 Password Strength Lab
Evaluate password complexity, test against cracking tools, and document best practices for secure authentication.
# 🔐 Password Strength Evaluation Log

## 🧪 Password Set Tested

| Password                  | Complexity Level | cracklib-check Feedback             | pwscore (optional) |
|---------------------------|------------------|-------------------------------------|---------------------|
| SimplePass123             | Medium           | OK                                  | 45                  |
| P@ssw0rd!                 | Medium           | OK                                  | 50                  |
| Th1sIs$Strong#Pass2025    | Strong           | OK                                  | 75                  |
| 123456                    | Weak             | it is too simplistic                | 5                   |
| Qwerty@789                | Weak             | it is based on a dictionary word    | 20                  |
| Complex#Key$With%Symbols123 | Very Strong     | OK                                  | 80                  |

## ✅ Tips Learned

- Use 12+ characters for better strength.
- Mix uppercase, lowercase, numbers, and symbols.
- Avoid dictionary words and common patterns.
- Never reuse passwords across accounts.

## ⚠️ Common Attacks

- **Brute Force**: Tries all combinations.
- **Dictionary Attack**: Uses known words.
- **Credential Stuffing**: Uses leaked passwords.

## 🔒 Conclusion

Password complexity directly increases resistance to brute force and dictionary attacks. Strong passwords scored higher and received better feedback from tools.

🔐 Password Strength Checker — Step-by-Step Bash Script

📁 Step 1: Create Your Workspace
mkdir password_strength_lab
cd password_strength_lab

📄 Step 2: Create the Script File
touch check_passwords.sh
chmod +x check_passwords.sh

✍️ Step 3: Paste This Code into check_passwords.sh

Use nano or any editor:
nano check_passwords.sh
Paste the following:
#!/bin/bash

# === STEP 1: Setup ===
report="password_strength_report.txt"
passwords="password_list.txt"
echo "Password Strength Report - $(date)" > "$report"
echo "-----------------------------------" >> "$report"

# === STEP 2: Create password list ===
echo "[+] Creating password list..."
cat <<EOF > "$passwords"
SimplePass123
P@ssw0rd!
Th1sIs\$Strong#Pass2025
123456
Qwerty@789
Complex#Key\$With%Symbols123
EOF

# === STEP 3: Check strength using cracklib-check ===
echo "[+] Checking password strength..."
while read -r password; do
    clean_pass=$(echo "$password" | tr -d '"')
    echo -e "\nPassword: $clean_pass" >> "$report"
    result=$(echo "$clean_pass" | cracklib-check)
    echo "Feedback: $result" >> "$report"
done < "$passwords"

# === STEP 4: Add best practices ===
echo -e "\n✅ Best Practices Learned:" >> "$report"
echo "- Use 12+ characters." >> "$report"
echo "- Mix uppercase, lowercase, numbers, and symbols." >> "$report"
echo "- Avoid dictionary words and common patterns." >> "$report"
echo "- Never reuse passwords across accounts." >> "$report"

# === STEP 5: Explain common attacks ===
echo -e "\n⚠️ Common Password Attacks:" >> "$report"
echo "- Brute Force: Tries every possible combination." >> "$report"
echo "- Dictionary Attack: Uses known words and patterns." >> "$report"
echo "- Credential Stuffing: Uses leaked passwords from breaches." >> "$report"
echo "- Complexity slows down brute force and defeats dictionary-based guesses." >> "$report"

echo "[+] Report saved to $report"


🧪 Step 4: Install Required Tool
sudo apt update
sudo apt install libpam-cracklib

🚀 Step 5: Run the Script
./check_passwords.sh

📄 Output

Your password strength report will be saved as:
password_strength_lab/password_strength_report.txt

