# Vigenère Cipher

The Vigenère cipher, was invented by a Frenchman, Blaise de Vigenère in the 16th
century. It is a polyalphabetic cipher because it uses two or more cipher
alphabets to encrypt the data. In other words, the letters in the Vigenère
cipher are shifted by different amounts, normally done using a word or phrase as
the encryption key .

Unlike the monoalphabetic ciphers, polyalphabetic ciphers are not susceptible to
frequency analysis, as more than one letter in the plaintext can be represented
by a single letter in the encryption.

|:-----------:|:--------------:|
|Plaintext    | ATTACKATDAWN   |
|Key          | LEMONLEMONLE   |
|Ciphertext   | LXFOPVEFRNHR   |

## The Vigenère Square

Blaise de Vigenère developed a square to help encode messages. Reading along
each row, you can see that it is a really a series of Caesar ciphers the first
has a shift of 1, the second a shift of 2 and so.

[Imgur](http://i.imgur.com/4QgWW91.png)
