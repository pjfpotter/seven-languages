#W1D7 - JULIA - Variables, Types & the REPL
#Neurospicy Tarot - The Fool

#--Basic assignment (dynamically typed)
card_name = "The Fool"
card_number = 0
upright = true
energy_level = 9.5 #out of ten, actually neurodivergent nervous systems literally run hotter

#--But you can annotate types if you really want
# Syntax: variable::Type (the capital letter matters)
archetype::String = "pure potential"
leap_of_faith::Bool = true

#---STRING INTERPOLATION---uses $ (all caps because I love it)
println("Card: $card_name (Major Arcana $card_number)")
println("Archetype: $archetype")
println("Energy: $energy_level / 10")

#--- typeof() at runtime ---
println(typeof(card_name))
println(typeof(card_number))
println(typeof(energy_level))

#Interesting error message when I mis-spelled printlin - it will run all the code up to the error
#then tell me that I probably mis-spelled something

#Task 3 - Julia's Type Hierarchy
#julia> supertype(Int64)
#Signed

#julia> supertype(Integer)
#Real

#julia> supertype(Real)
#Number

#julia has concrete and abstract types and they all exist in a tight hierarchy tree
#you can test is a value belongs to a type with isa(value, type)
#you can find the next type up in the tree with supertype(type)
#you can't assign an abstract type, but you can write functions that take anything that is a member of that type
#The full tree: Int64 → Signed → Integer → Real → Number → Any

#Task 4 - Constants and MULTIPLE ASSIGNMENT (whaaaat!?)

const MAJOR_ARCANA_COUNT = 22
const DECK_NAME = "Neurospicy Tarot"

#Multiple Assignment
superpower, trap = "radical openness", "chronic distraction"

println("$DECK_NAME has $MAJOR_ARCANA_COUNT major arcana")
println("The Fool's superpower: $superpower")
println("The Fool's trap: $trap")

verdict = superpower == trap ? "possibly" : "not quite"
println("Are they the same thing? $verdict")

#=
Defines at least 5 variables representing a tarot card (or a D&D character — your call)
Uses at least one explicit type annotation (::Type)
Uses const for at least one value that shouldn't change
Uses string interpolation to print a readable description
Calls typeof() on at least two variables and prints the results
Includes a comment explaining one thing Julia does differently from a language you've already learned this week
=#

#Character Sheet for the cyberfarce heist Game "Neuroslapstick City 2069"
char_name::String = "Dank Phats"
char_class = "Bo Diddler"
char_level = 69
char_aura = "inimicable"
const HAS_SHANK::Bool = true

println("$char_name kicks open the door of the saloon, sending ripples through the vibe with his $char_aura aura.")
println("A scrawny cyberurchin with legs made of pins bawls out. 'Scarper chums! It's a $char_class'!")
println("A simmering hot non-binary humanoid sidles up to $char_name and whispers, \'I hear you are level $char_level\'")
println("\'$HAS_SHANK he mutters.\'")

println(typeof(char_level))
println(typeof(HAS_SHANK))

#One thing Julia does differently is the TYPE HIERARCHY, and the division between abstract and real types. 

#=
Julia is dynamic and typed. What does that actually mean in practice? (Compare to Python, TypeScript, Rust.)
--Flexibility, you can dial up the rigour or dial it down depending on use case, also typing actually has speed advantages

You can write ÷ and √ as actual operators. Is that a gimmick, or does it matter?
--Readability matters with complex mathematics, this is a scientific language

The 1-indexing thing — what would have to change about the language design to make it 0-indexed instead?
--I don't know. I guess an array is zero indexed because binary is binary and zero is a memory address so it actually means something
--So there must be a layer in Julia that sits on top of binary to make math more math

Julia compiles to native code but feels like a scripting language. 
--What doesn't compile to native code? Do we mean machine code here? I thought everything had to get turned into machine code
--at least at some point in the process of moving from written code to binary

What's the trade-off? (Hint: try running your script a second time — is there anything you notice about startup time?)
--Visibly slower than other languages in the BASH

=#