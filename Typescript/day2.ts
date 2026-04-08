/*
🛠️ Exercises

Work in day2.ts, run with ts-node day2.ts.

Exercise 1 — Typed character sheet
Recreate your Neurospicy Character Sheet from Day 1 in TypeScript. This time every variable must have an explicit type annotation. Use const for anything that won't change, let for anything that might. Print everything with a template literal (same as Python's f-strings but with backticks):
typescriptconsole.log(`Name: ${characterName}`)

Exercise 2 — The type enforcer
Declare a variable as number, then try to reassign it to a string. Write a comment describing what error TypeScript gives you. Then fix it by using a union type instead.

Exercise 3 — Inference detective
Declare five variables without type annotations. Hover over each one in VS Code — what type has TypeScript inferred? Write a comment next to each one noting what it figured out.

Exercise 4 — The tarot card, typed
Recreate your tarot card from Day 1 with full TypeScript types. Add one extra field: uprightMeaning which can be either a string or null — use a union type. Print a readable description.

Exercise 5 — null vs undefined
Declare a variable with type string | null and set it to null. Print it. Then assign it a real string and print it again. Do the same with string | undefined. Write a comment explaining in your own words what you think the difference is.

➡️ Go Further

What happens if you try to use const without assigning a value? Why?
What does TypeScript do with typeof — try console.log(typeof "hello") and console.log(typeof 42). How does this compare to Python's type()?
Try declaring a variable as type any. What does this do to TypeScript's type checking? Why might this be dangerous?

*/

//My Neurospicy Character Sheet

const characterName: string = "Ursula"

const characterClass: string = "Cyberwitch"

let level: number = 1

let health: number = 13.0

let alive: boolean = true

//print(f"Name: {characterName}, Class: {characterClass}, Level: {level}, Health: {health}, Alive: {alive}")
//TS uses a strong literal here

console.log(`${characterName} is a level ${level} ${characterClass} on ${health} health.`)
console.log(`${characterName} is ${alive ? "not yet deceased." : "as dead as a doornail."}`)

//Type Enforcer

let totallyANumber: number = 42

//totallyANumber = "forty-two"

/*
/usr/lib/node_modules/ts-node/src/index.ts:859
    return new TSError(diagnosticText, diagnosticCodes, diagnostics);
           ^
TSError: ⨯ Unable to compile TypeScript:
day2.ts:52:1 - error TS2322: Type 'string' is not assignable to type 'number'.

52 totallyANumber = "forty-two"
   ~~~~~~~~~~~~~~

    at createTSError (/usr/lib/node_modules/ts-node/src/index.ts:859:12)
    at reportTSError (/usr/lib/node_modules/ts-node/src/index.ts:863:19)
    at getOutput (/usr/lib/node_modules/ts-node/src/index.ts:1077:36)
    at Object.compile (/usr/lib/node_modules/ts-node/src/index.ts:1433:41)
    at Module.m._compile (/usr/lib/node_modules/ts-node/src/index.ts:1617:30)
    at node:internal/modules/cjs/loader:1943:10
    at Object.require.extensions.<computed> [as .ts] (/usr/lib/node_modules/ts-node/src/index.ts:1621:12)
    at Module.load (node:internal/modules/cjs/loader:1533:32)
    at Module._load (node:internal/modules/cjs/loader:1335:12)
    at wrapModuleLoad (node:internal/modules/cjs/loader:255:19) {
  diagnosticCodes: [ 2322 ]
}

Ask claude to explain these messages. I mean i guess they are just locating where in the compiling process that the error threw and what it was.

*/

//Inference Detective

let myString = "string"
//correctly inferred string
let myNumber = 666
//correctly inferred number
let myBool = true
//correctly inferred boolean
let myNull = null
//inferred any - allowing this variable to be reassigned to any data type
let myUndefined = undefined
//inferred any - allowing this variable to be reassigned to any data type

//My Neurospicy Tarot Card

const majorArcana: boolean = true
const cardNumber: number = 0
const cardName: string = "the Fool"
const uprightMeaning: string | null = "The Fool is the AuDHD moment of pure new-idea energy — the instant before consequences arrive, when everything feels possible and the only direction is forward."
const upsideDownMeaning: string | null = "Reversed, the Fool is asking you to consider what is the nagging thought that you are ignoring because you are so enthused by your current hypersfocus."

const upright: boolean = Math.random() > 0.5


console.log(`Your card is ${cardName}`)
console.log(`This is card ${cardNumber} from the ${majorArcana ? "Major Arcana" : "Minor Arcana"}`)
console.log(`${upright ? uprightMeaning : upsideDownMeaning}`)

//Null vs. Undefined

let nullIsFrenchForRubbish: string | null = null

console.log(nullIsFrenchForRubbish) //prints null

nullIsFrenchForRubbish = "Oui, c'est vrai. C'est nul."

console.log(nullIsFrenchForRubbish) // prints the string

let undefinedStringEstChic: string | undefined = undefined

console.log(undefinedStringEstChic) // prints undefined

undefinedStringEstChic = "Je sais que les noms de mes variables sont trop longs."

console.log(undefinedStringEstChic) // prints the string

//I notice that when you declare a variable with null or undefined without declaring type it inferes to 'any', but here I guess the variable actually has two data types.
//TS notices when you assign the string and treats the variable accordingly? Or it coerces it?

//const youAreNotGoingToLikeThisTypescript

/*
   return new TSError(diagnosticText, diagnosticCodes, diagnostics);
           ^
TSError: ⨯ Unable to compile TypeScript:
day2.ts:130:7 - error TS1155: 'const' declarations must be initialized.

130 const youAreNotGoingToLikeThisTypescript
          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
day2.ts:130:7 - error TS7005: Variable 'youAreNotGoingToLikeThisTypescript' implicitly has an 'any' type.

*/

console.log(typeof(42))
console.log(typeof("Hola mundo!"))

let myNaughtyVariable: any = 666

console.log(myNaughtyVariable)
myNaughtyVariable = "666"
console.log(myNaughtyVariable)
myNaughtyVariable = myNaughtyVariable + 666 //coerces my 666 to a string and concatenates
console.log(myNaughtyVariable)
