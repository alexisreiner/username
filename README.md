# README for Username Validation Script

## Author Information
- **Name:** Alexis Reiner
- **Course:** CPSC 298
- **Assignment:** Username Validation
- **Date:** January 22 2026

## Program Description
This program is a Bash script that validates user-created usernames based on a defined set of rules. It prompts the user to enter a username, checks the input using a regular expression, and provides immediate feedback on whether the username is valid or not. The script continues prompting until a valid username is entered, then thanks the user and exits.


## Username Requirements
This script validates usernames according to the following rules:
- Must start with a lowercase letter
- Can only contain lowercase letters, digits, and underscores
- Must be between 3 and 12 characters in length (inclusive)

## Usage
To run the script interactively:
```bash
./username.sh
```

To test with the provided input file:
```bash
./username.sh < username-input
```

## How the Script Works
The script runs inside a `while` loop so the user can keep trying until a valid username is entered. Each username is checked using a regular expression that enforces the required rules, including allowed characters, starting letter, and length constraints. The script uses Bash pattern matching to compare the input against the regex and determine if it is valid. If the username does not match the pattern, the script prints an error message and prompts the user again; if it matches, the script prints a success message and exits.


## Regular Expression Pattern
The validation uses the following regular expression pattern:
```
^[a-z][a-z0-9_]{2,11}$
```
This pattern ensures that:
- The username starts with a lowercase letter `[a-z]`
- The following characters are lowercase letters, digits, or underscores `[a-z0-9_]`
- The total length is between 3 and 12 characters

## Testing Results

I tested the script using both manual input and the provided `username-input` file to make sure it correctly accepts valid usernames and rejects invalid ones.

**Valid usernames tested:**
- `alexisreiner` — valid because it starts with a lowercase letter, uses only allowed characters, and is within the length limit  
- `a1234` — valid because it follows all formatting and length rules

**Invalid usernames tested:**
- `Alexis` — invalid because it starts with an uppercase letter  
- `ab` — invalid because it is fewer than 3 characters  
- `alexis!` — invalid because it contains a special character not allowed

I also tested the script using input redirection with the command:

-```bash
-./username.sh < username-input

## Challenges and Solutions:**
One challenge I encountered was correctly writing the regular expression so that it enforced all the rules at the same time, especially the length requirement and the starting lowercase letter. I solved this by breaking the pattern into parts and testing different inputs until the regex behaved correctly.

Another challenge was understanding how `grep -E`, exit codes, and output redirection work together. I learned how to use `>/dev/null 2>&1` to suppress output and rely on the command’s exit status instead of printed output to control program logic.

## Resources
Class Slides and ChatGPT

## License
This project is part of coursework for Chapman University and is intended for educational purposes.
