# Open-Source-Technology
# 🔐 Security Code Generator

Generate secure, customizable PINs and passwords effortlessly with this easy-to-use Bash script. Perfect for users who need quick, strong, and versatile codes for enhanced security.

## 🚀 Introduction
In today's digital landscape, strong passwords and PINs are essential to maintaining security. This **Security Code Generator** script allows you to create randomized PINs and passwords that meet a variety of complexity needs. Choose from a basic password format, advanced password format (including special characters), or numeric-only PINs.

## ✨ Features
- **PIN Generation**: Generate numeric-only PINs of any length.
- **Basic Password Generation**: Create passwords with only uppercase and lowercase letters.
- **Advanced Password Generation**: Create complex passwords with uppercase, lowercase, digits, and special characters.
- **Fully Randomized**: Ensures each code is unique and secure through character shuffling.

## 🎮 Usage
After starting the script, you’ll be prompted to choose from the following options:
1. **Generate a PIN**: Input the desired PIN length.
2. **Generate a Password**: Choose between a basic (letters only) or advanced (letters, digits, symbols) password and specify the length.

## 📋 Examples

### Example 1: Generating a 6-Digit PIN
```bash
Please enter your choice (1 or 2): 1
Enter the desired number of characters for the PIN: 6
Generated PIN: 482739
```

### Example 2: Generating a Basic 8-Character Password
```bash
Please enter your choice (1 or 2): 2
Enter your choice for password type (1 or 2): 1
Enter the desired number of characters for the Password: 8
Generated Password: QpMwYeZv
```

### Example 3: Generating an Advanced 12-Character Password
```bash
Please enter your choice (1 or 2): 2
Enter your choice for password type (1 or 2): 2
Enter the desired number of characters for the Password: 12
Generated Password: xV9$QrP&3*Y!
```

## ⚙️ Customization
To adjust the character sets used in passwords:
- Edit the arrays in the script, such as `DIGITS`, `UPCASE_CHARACTERS`, `LOCASE_CHARACTERS`, and `SYMBOLS`, to include or remove specific characters.

To set a default password length, you can modify the `MAX_LEN` variable within the script.

## 🤝 Thank You
