#My Neurospicy Tarot Engine
#Learning conditionals, loops, functions and scope

"""
Exercise 1 — Basic conditional interpreter
Write a function interpret_major(card_name) that 
takes the name of a Major Arcana card as a string 
and returns its core meaning. 
Cover at least 5 cards using if/elif/else. 
Return "Unknown card" as the fallback.
"""
import random

deck = ["The Fool", "The Magician", "The High Priestess", "The Emperor", "The Hierophant"]

def interpret_major(card_name):
    if card_name == "The Fool":
        return "take a leap of faith"
    elif card_name == "The Magician":
        return "use your talents" 
    elif card_name == "The High Priestess":
        return "lock in and study up!"
    elif card_name == "The Emperor":
        return "give 'em that boss energy"
    elif card_name == "The Hierophant":
        return "preach!"
    else:
        return "error: card unknown" 

your_card = random.choice(deck)
your_reading = interpret_major(your_card)

#print(f"You picked {your_card} so you should {your_reading}") 

"""
Exercise 2 — Add spread position logic
Tarot meanings shift depending on where in the spread the card lands. 
Write a function position_modifier(position) that returns a modifier string for 
positions "past", "present", "future", and "obstacle".
Then write full_reading(card_name, position) that combines both 
functions into one complete sentence.

This task I think is a little sloppy Claude because I see no way to do this
without using a data structure or writing an enormous case switch
the position doesn't add a modifier, it changes the interpretation entirely
"""

neurospicy_tarot = {
  "The Fool":           {"past": "You leapt before you looked and somehow it worked",
                        "present": "You're at the edge again, the drop is fine, jump",
                        "future": "The chaos you're about to cause is the whole point",
                        "obstacle": "Sometimes when you leap into the unknown you break your ankle",
                        "reversed_reading": "You are going to be in hospital for a while."
                        },
  "The Magician":       {"past": "You had everything you needed and used about forty percent of it",
                        "present": "All the tools are on the table, pick one and start",
                        "future": "You're going to pull this off and annoy everyone who doubted you",
                        "obstacle": "You keep researching instead of doing, the wand is right there",
                        "reversed_reading": "All the gear, no idea."
                        },
  "The High Priestess": {"past": "You knew. You knew the whole time.",
                        "present": "Go quieter. The answer is already in there somewhere",
                        "future": "Something is coming and your gut will clock it before your brain does",
                        "obstacle": "You're drowning in information and ignoring your intuition",
                        "reversed_reading": "Bed rotting."
                        },
  "The Emperor":        {"past": "You built something solid, possibly by hyperfocusing for 72 hours",
                        "present": "Time to be the person with the plan, even if it's uncomfortable",
                        "future": "Structure is coming — either you build it or it gets imposed on you",
                        "obstacle": "You're resisting the boring scaffolding that would actually set you free",
                        "reversed_reading": "You are going to be arrested."
                        },
  "The Hierophant":     {"past": "Someone's rules shaped you, useful to notice which ones you kept",
                        "present": "The system has a door, it's worth knowing where it is before you burn the building",
                        "future": "You'll find your people — the ones who made the same weird choices",
                        "obstacle": "You're either too inside the institution or too outside it, both are a trap",
                        "reversed_reading": "You are going to be cancelled."
                        }
}

#def position_modifier(position):
#need to put some error catching code in here...(use .get)
def full_reading(card_name, position, reversed):
    reversed_reading = neurospicy_tarot[card_name]["reversed_reading"]
    if reversed:
        return f"Uh oh! {card_name} is upside-down! {reversed_reading}." 
    else:
        return f"{card_name} is in the {position} position. {neurospicy_tarot[card_name][position]}"
    
#print(full_reading("The Fool", "future"))

#Exercise 3: Loop over a spread

spread = [
    ("The Fool", "past"),
    ("The Emperor", "present"),
    ("The Hierophant", "future"),
    ("The Magician", "obstacle")
]

#for card_name, position in spread:
#    print(full_reading(card_name, position)) //This no longer works because I added a reversed param

"""
Exercise 4 — Reversed cards & list comprehension
In tarot, a reversed card (upside down) inverts or complicates the meaning. 
Add a reversed parameter to full_reading(). 
Then use a list comprehension to generate readings for a whole hand where every other card is reversed.
"""

hand = ["The Fool", "The Magician", "The High Priestess", "The Emperor", "The Hierophant"]
print("Task 4 Output:")
readings = [full_reading(card, "present", reversed=(i % 2 == 0)) for i, card in enumerate(hand)]
for r in readings:
    print(r)

"""
Rubber Duck Times

Hello Duck. 
I have five card names in a list called hand. 
I have the same five card names as keys in my nested dictionary called neurospicy_tarot
Each card has four strings in my nested dictionary depending on past, present, future or obstacle position in spread.
I will need to give each card a reversed value, I won't make it change for position because Ducks hate project creep.
I want to use Python's list comprehension feature to generate a new list of reversed cards.
These means that we will need a boolean somewhere. 
Where does it go Duck?
I add a third, boolean, parameter called reversed to the full_reading function.
Therefore, Duck, I need to add a boolean value to each nested dictionary
so that my list comprehension can check if a card is reversed and then add it to the readings[] list.
And you are right my friend to point out that I will still get a list of normal present readings
Therefore, there should be a conditional in full_reading() that checks for reversed status and prints
an alternate output, which will require another string value for each card.
When and where is this boolean check happening?
When I call full_reading("The Fool", "Present", true) the boolean only gets checked if i add an if block inside the function
And this says - if the arg passed is true, access the value in card_name[reversed] and set it to true
then before you spit out a reading - check if card_name[reversed] is true and print a reversed reading
if it is false proceed to return as normal.
What do you think, Duck?
"""