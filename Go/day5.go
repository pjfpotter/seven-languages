/*
Part 1 — Declare your variables three ways
Using all three declaration styles, set up a tarot card with:

A card name (string)
A card number (int, 0–21 for Major Arcana)
Whether it's reversed (bool)
An energy level (float64, 0.0–10.0)

Use var name type = value for at least one, var name = value for at least one, and := for at least one. Then print them all with fmt.Println().

Part 2 — Zero values
Declare four variables — one int, one string, one bool, one float64 —
without assigning them any value. Print them. What do you get?
Add a comment explaining what Go is doing and why it's useful.

Part 3 — Constants
Declare constants for:

The total number of Major Arcana cards (22)
The name of your tarot deck ("Neurospicy Tarot")

Then use them in a printed sentence: "The [deck name] has [total] Major Arcana cards."

🎲 Go Further (optional but scored)

Go has a concept of multiple return values — functions can return more than one thing.
This is genuinely unusual (Python can do it with tuples, but Go makes it a first-class feature).

Here's a teaser:

gofunc cardDetails() (string, bool) {
    return "The Fool", false
}

func main() {
    name, reversed := cardDetails()
    fmt.Println(name, reversed)
}

Write a function cardDetails() that returns a card name and whether it's reversed,
then unpack both values with :=.

Add a comment: what does this pattern remind you of from destructuring in JavaScript?



*/

package main

import "fmt"

func main() {

	//Part 1
	var cardName string = "La Lune"
	var cardNumber = 18
	reversed := false
	var energy float64 = 10.0

	fmt.Println("Your card is", cardName, "and it is card number", cardNumber, "of the major arcana.")
	fmt.Println("Your card has an energy level of", energy)
	fmt.Println("Your card is", func() string {
		if reversed {
			return "reversed"
		} else {
			return "upright"
		}
	}())

	//Part 2
	var myInt int       //assigns 0
	var myFloat float64 //assigns 0
	var myString string //assigns nothing, or at least nothing prints
	var myBool bool     //assigns false

	fmt.Println(myInt, myFloat, myString, myBool)

	//Part 3
	const MajorArcana int = 22
	const TarotDeck string = "Neurospicy Tarot"

	fmt.Printf("The %s has %d major arcana cards.\n", TarotDeck, MajorArcana)

	//Go Further with Go
	name, reversed := cardDetails()
	fmt.Println(name, reversed)

}

func cardDetails() (string, bool) {
	return "The World", true
}
