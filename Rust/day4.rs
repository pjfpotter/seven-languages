/* 
Part 1 — Basic character variables
Declare variables representing a tarot character. Use explicit types where it feels natural, let inference work where it doesn't. Include at least:

A name (string — use &str for now, which is just a string literal)
An archetype
A power_level as an integer
An alignment score as a float (between -1.0 and 1.0)
An is_reversed boolean

Print them all with println!.

Part 2 — Mutability in practice
Pick two of your variables that would logically change during a reading (maybe power level shifts, or reversed status flips). Declare them mut and show a change happening. The others should stay immutable.

Part 3 — Shadowing
Use shadowing to transform one of your variables — for example, take a name string and shadow it with its length, or take a raw number and shadow it with a labelled string version. Show that the type changed.

Part 4 — A constant
Declare a constant MAJOR_ARCANA_COUNT with the value 22. Use it in a println! that calculates how many cards remain after your card's position in the deck (pick a position).

🎯 Go Further (if you're on a roll)
Rust has no null. Instead it has Option<T> — a type that's either Some(value) or None. You don't need to master this today, but try declaring:
rustlet shadow_name: Option<&str> = Some("The Ghost");
let unknown: Option<&str> = None;
Then add a println! that prints the shadow name if it exists. You'll probably need to look up how to "unwrap" an Option — try .unwrap() first, then see if you can find the safer version.
*/

//My Neurospicy Tarot

fn main() {
    
    //TASK 1
    //let card_name: &str = "The Moon";
    //let archetype = "The Changeling";
    //let power_level: i32 = 3;
    //let alignment: f64 = 0.67;
    //let is_reversed = false;

    //println!("Card name: {}, Archetype: {}, Power: {}, Alignment: {}, Reversed: {}",
    // card_name, archetype, power_level, alignment, is_reversed);

    //TASK2
    let card_name: &str = "The Moon";
    let archetype = "The Changeling";
    let mut power_level: i32 = 3;
    let alignment: f64 = 0.67;
    let mut is_reversed = false;

    //Interesting that you cannot declare a mutable variable and then immediately reassign it to another value
    //before it even gets read by the compiler. These error messages really are detailed.
    println!("Card name: {}, Archetype: {}, Power: {}, Alignment: {}, Reversed: {}",
    card_name, archetype, power_level, alignment, is_reversed);

    power_level = 6;
    is_reversed = true;

    println!("Card name: {}, Archetype: {}, Power: {}, Alignment: {}, Reversed: {}",
    card_name, archetype, power_level, alignment, is_reversed);

    //TASK3

    let shadow_name = "Obscurity";
    let shadow_name = shadow_name.len();
    println!("{}", shadow_name);

    //TASK4
    //use rand::prelude::*; - scope creep is naughty
    const MAJOR_ARCANA_COUNT: i32 = 22;
    let card_position = 9; //rand::rng(0,22);
    let cards_remaining = MAJOR_ARCANA_COUNT - card_position;
    println!("There are {} cards remaining after your card in the deck.", cards_remaining);
    
    //Go further
    let shadow_name: Option<&str> = Some("The Ghost"); //Not nothing, nothing or a string - in this case it is a string. 
    let unknown: Option<&str> = None; //Not exactly nothing, more like the absence of a string.
    println!("Is that {}?, or is it {}?", shadow_name.unwrap(), unknown.unwrap_or("my imagination")); //compiler actually panicked lol - doesn't like calling unwrap on a none value

}




