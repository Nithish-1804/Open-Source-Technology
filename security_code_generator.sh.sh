#!/bin/bash

echo "****************************************"
echo "********** Hello, User! **********"
echo "**** Welcome to Security Code Generator ****"
echo "****************************************"
echo

# Function to generate random characters from a given set
select_random_char() {
    local arr=("$@")
    echo -n "${arr[RANDOM % ${#arr[@]}]}"
}

# Main Menu
echo "Options:"
echo "1 - Generate PIN"
echo "2 - Generate Password"
echo
read -p "Please enter your choice (1 or 2): " n
echo

if [[ $n -eq 1 ]]; then
    echo "****** PIN Generator ******"
    read -p "Enter the desired number of characters for the PIN: " MAX_LEN
    echo
    
    DIGITS=('0' '1' '2' '3' '4' '5' '6' '7' '8' '9')
    pin=""

    for ((i = 0; i < MAX_LEN; i++)); do
        pin+=$(select_random_char "${DIGITS[@]}")
    done

    echo "---------------------------------"
    echo "Generated PIN: $pin"
    echo "---------------------------------"

elif [[ $n -eq 2 ]]; then
    echo "****** Password Generator ******"
    echo "Password Types:"
    echo "1 - Basic Password (Uppercase and Lowercase only)"
    echo "2 - Advanced Password (Uppercase, Lowercase, Digits, and Symbols)"
    echo
    read -p "Enter your choice for password type (1 or 2): " p
    read -p "Enter the desired number of characters for the Password: " MAX_LEN
    echo

    if [[ $p -eq 1 ]]; then
        echo "Generating Basic Password..."
        
        LOCASE_CHARACTERS=('a' 'b' 'c' 'd' 'e' 'f' 'g' 'h' 'i' 'j' 'k' 'm' 'n' 'o' 'p' 'q' 'r' 's' 't' 'u' 'v' 'w' 'x' 'y' 'z')
        UPCASE_CHARACTERS=('A' 'B' 'C' 'D' 'E' 'F' 'G' 'H' 'I' 'J' 'K' 'M' 'N' 'O' 'P' 'Q' 'R' 'S' 'T' 'U' 'V' 'W' 'X' 'Y' 'Z')
        
        COMBINED_LIST=("${LOCASE_CHARACTERS[@]}" "${UPCASE_CHARACTERS[@]}")
        
        password="$(select_random_char "${UPCASE_CHARACTERS[@]}")"
        password+=$(select_random_char "${LOCASE_CHARACTERS[@]}")
        
        for ((i = 2; i < MAX_LEN; i++)); do
            password+=$(select_random_char "${COMBINED_LIST[@]}")
        done

    elif [[ $p -eq 2 ]]; then
        echo "Generating Advanced Password..."
        
        DIGITS=('0' '1' '2' '3' '4' '5' '6' '7' '8' '9')
        LOCASE_CHARACTERS=('a' 'b' 'c' 'd' 'e' 'f' 'g' 'h' 'i' 'j' 'k' 'm' 'n' 'o' 'p' 'q' 'r' 's' 't' 'u' 'v' 'w' 'x' 'y' 'z')
        UPCASE_CHARACTERS=('A' 'B' 'C' 'D' 'E' 'F' 'G' 'H' 'I' 'J' 'K' 'M' 'N' 'O' 'P' 'Q' 'R' 'S' 'T' 'U' 'V' 'W' 'X' 'Y' 'Z')
        SYMBOLS=('@' '#' '$' '%' '=' ':' '?' '.' '/' '|' '~' '>' '*' '(' ')' '<')
        
        COMBINED_LIST=("${DIGITS[@]}" "${LOCASE_CHARACTERS[@]}" "${UPCASE_CHARACTERS[@]}" "${SYMBOLS[@]}")
        
        password="$(select_random_char "${DIGITS[@]}")"
        password+=$(select_random_char "${UPCASE_CHARACTERS[@]}")
        password+=$(select_random_char "${LOCASE_CHARACTERS[@]}")
        password+=$(select_random_char "${SYMBOLS[@]}")
        
        for ((i = 4; i < MAX_LEN; i++)); do
            password+=$(select_random_char "${COMBINED_LIST[@]}")
        done
    fi

    # Shuffle the password to ensure randomness
    password=$(echo "$password" | fold -w1 | shuf | tr -d '\n')

    echo "---------------------------------"
    echo "Generated Password: $password"
    echo "---------------------------------"
else
    echo "Invalid choice. Please restart the script and choose either 1 or 2."
fi

echo
echo "****************************************"
echo "*** Thank you for using our service! ***"
echo "****************************************"
