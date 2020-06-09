# Enigma - Mod 1 Final Project

## Self-Assessment
### Functionality
All methods are working as intended. The only caveat is that I have thus far been unable to derive the key used for encryption after cracking the encrypted message.

### Object-Oriented Programming
The Fileable module was created to streamline the process of reading from and writing to files when utilizing CLI commands.

### Ruby Convention and Mechanics
I *think* all classes, methods, and variables are appropriately named. I am open to suggestions as far as enumerable efficiency is concerned. No methods are longer than 10 lines in length.

### Test-Driven Development
An .expects statement was successfully implemented to stub the output of the KeyGenerator#generate_key method. However, I had an issue writing a test for the Enigma#encrypt method when a key was not provided. I again attempted to stub the output of the KeyGenerator#generate_key method, but output showed a randomized key. This is likely due to the way I structured the Enigma#encrypt method - when a key is not given, the first line of code generates one to use in the encryption process.

### Version Control
Commit messages are clear and concise, and the threshold of 40 commits was surpassed by a wide margin. Pieces of functionality were implemented and committed separately *most* of the time. I did not utilize branching on this project.
