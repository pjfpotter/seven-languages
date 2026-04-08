#My Neurospicy Character Sheet

characterName = "Ursula"
#Name (string)

characterClass = "Cyberwitch"
#Class (string)

level = 1
#Level (int)

health = 13.0
#Health (float)

alive = True
#Alive (bool)

print(f"Name: {characterName}, Class: {characterClass}, Level: {level}, Health: {health}, Alive: {alive}")
#Print all values out using an f-string

#My Neurospicy Tarot Card

majorArcana = True
cardNumber = 13
cardName = "Death"
keywords = "scary, dark, liberating and a little bit goth"
reverse = False

print(f"You have drawn card number {cardNumber}, {cardName}. This card is {keywords}.")

#Type Detective

myInt = 42
myFloat = 3.142
myString = "rosebud"
myBool = False
myNull = None

print(f"myInt references the value {myInt} and it is a {type(myInt)} ")
print(f"myFloat references the value {myFloat} and it is a {type(myFloat)} ")
print(f"myString references the value {myString} and it is a {type(myString)} ")
print(f"myBool references the value {myBool} and it is a {type(myBool)} ")
print(f"myNull references the value {myNull} and it is a {type(myNull)} ")

print(f"When you add an Integer and a Float you get a {type(myInt + myFloat)}")

#The unreliable narrator

mood = None

print(f"{mood}")

mood = "The vibes were off."

print(f"{mood}")
#Variables are not restricted to a type when they are declared, they can be re-assigned to another type 

#Something breaks

#print("Level " + 5)
#TypeError: can only concatenate str (not "int") to str

print("Level " + "5")
#Fix 1

level = 5
print(f"Level {level}")
#fix 2

#Go further

breakMyBools = True + True
print(breakMyBools)
#It prints 2 as an integer, probably because the boolean value true is 1, false is 0

#what's the difference between these two...
print(10 / 3) #gives a float
print(10 // 3) #gives an integer, rounded

#what does this nonsense mean?
print(type(type("hello")))
#It tells us that 'Type' is a Class, somewhere in Python this is a defined Class
#so I guess that type() is a method from the Type class
