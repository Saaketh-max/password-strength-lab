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
