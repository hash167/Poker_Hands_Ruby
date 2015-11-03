# Poker_Hands_Ruby
You have been contacted by CNB Tech Security who is in dire need of technical assistance. CNB Tech Security provides security services for the World Poker Federation, a prestigious Poker Tournament.

CNB Tech Security has received reports that someone in the tournament is cheating at cards. They are scrambling to verify the results of previous tournaments.

The security company has footage from all of the games. They have been able to transcribe the cards that all of the players have had in each game. They need your help to determine the value of each player's hand.

The Hand
A poker hand consists of five cards. These cards will be the 52 cards of the standard playing card deck.

The cards were transcribed as a set of two characters representing the suit and value of the card. For example:

AS - Ace of Spades
2H - Two of Hearts

Each hand is comprised of 5 unique cards.

Hand 1 - 3D 9H AD 8C JS
Hand 2 - KC KH KD AC AH

Poker Scoring
If you aren’t familiar with how hands are scored in poker, here is a good reference: https://en.wikipedia.org/wiki/List_of_poker_hands

Basically there are nine types of hands that you can have. Here they are in descending value:

1. Straight Flush - This is the most valuable and most rare, in the straight flush all cards are of the same suit and are in sequential order. The higher the value the better.

2. Four of a Kind - The hand contains all four cards, one from each suit, of the same value

3. Full House - In a full house all cards are of value, it consists of three cards of the same value and a pair of cards of another value

4. Flush - All five cards are of the same suit

5. Straight - All card values are unique and sequential

6. Three of a Kind - Three cards in the hand are of the same value

7. Two Pair - The hand contains two pairs of cards that share a value

8. A Pair - The hand contains two cards of the same value

9. High card - The hand contains no other scoring cards so the value of the hand is that of the highest value card.

The Challenge
Write a program that takes a poker hand consisting of 5 cards and determines which type of hand it is.

Stretch Goal
CNB Tech Security would be very grateful for your help as the next tournament is in two weeks. They are out of time and need your assistance. Once you complete your task they will still have two additional steps, if you are willing to assist with these they would be very grateful.

Both of these stretch goals will require your program to accept a series of five card hands. From these it will need to do one or both of the following:

1. Determine if any of the cards are duplicated

2. Return the hand from the series has the highest value
