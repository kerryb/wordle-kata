# Wordle Kata

A popular game exists that requires you to guess a 5 letter word from a list of
accepted words.

To aid the guesser, this program should tell the guesser how many words from
the word list could possibly match given their previous guesses.

The program works like this:

It takes three parameters:

  * a list of words that constitutes all accepted valid words
  * a list of words guessed so far (up to a maximum of 5)
  * the word of the day

The program should return all possible words that are still available to be
guessed.

To do that it will need to:

  * assume the person guessing has been told from their previous guesses which letters are in the word and which aren't
  * ignore all words containing letters they have been told are not in the word

## Example

Given a word list of:

  * hello
  * about
  * slick
  * which
  * leaps
  * stick
  * wicks

and guesses so far of:

  * which
  * leaps

and today's word is:

  * slick

the program will return:

  * slick
  * stick

As they are the only words left that don't contain letters from guessed words
that are not present in the final word. Bonus points to those who consider
program efficiency. Feel free to do a code golf, super-short solution. If that
is the approach you take the reviewer should consider the shortness in their
marking as the main priority.
