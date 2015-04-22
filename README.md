# Vigenère Cipher

Vigenère cipher, type of substitution cipher invented by the 16th-century French
cryptographer Blaise de Vigenère and used for data encryption in which the
original plaintext structure is somewhat concealed in the ciphertext by using
several different monoalphabetic substitution ciphers rather than just one; the
code key specifies which particular substitution is to be employed for
encrypting each plaintext symbol. Such resulting ciphers, known generically as
polyalphabetics, have a long history of usage. The systems differ mainly in the
way in which the key is used to choose among the collection of monoalphabetic
substitution rules.

Unlike the monoalphabetic ciphers, polyalphabetic ciphers are not susceptible to
frequency analysis, as more than one letter in the plaintext can be represented
by a single letter in the encryption.

|Text         | Result
|:-----------:|:--------------:|
|Plaintext    | ATTACKATDAWN   |
|Key          | LEMONLEMONLE   |
|Ciphertext   | LXFOPVEFRNHR   |

## Tabula Recta - The Vigenère Square

Blaise de Vigenère developed a square to help encode messages. Reading along
each row, you can see that it is a really a series of Caesar ciphers the first
has a shift of 1, the second a shift of 2, etc.

![Imgur](http://i.imgur.com/4QgWW91.png)
