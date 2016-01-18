//
//  main.swift
//  basic-command-line
//
//  Created by Liam Byrne on 2016-12-16.
//  Copyright © 2015 Royal St. George's College. All rights reserved.
//

import Foundation
var difficulty:UInt32 = 0
var check:Int = 0
var i:Int = 0
var k:Int = 0
var factors : [Int] = []
var start:Int = 0

while start == 0 {

print ("Welcome to Liam's Math Flash Cards!")
print ("Please select an operator!")
print ("1. +")
print ("2. -")
print ("3. *")
print ("4. /")
print ("Select a number! (1, 2, 3, or 4)")

let choice = Int(readLine(stripNewline: true)!)!

if choice == 1 {
    print("You have selected addition!")
    check = 1
    sleep(1)
} else if choice == 2 {
    print("You have selected subtraction!")
    check = 1
    sleep(1)
} else if choice == 3 {
    print("You have selected multiplication!")
    check = 1
    sleep(1)
} else if choice == 4 {
    print("You have selected division!")
    check = 1
    sleep(1)
} else {
    print("Error! That is not a valid operator!")
    sleep(1)
}


// Level system (Easy, Medium, Hard)
print("Please select a level!")
print("1. Easy")
print("2. Medium")
print("3. Hard")
print("")

let level = Int(readLine(stripNewline: true)!)! // The variable to hold the level the user selects
if level == 1 {
    difficulty = 10
} else if level == 2 {
    difficulty = 50
} else if level == 3 {
    difficulty = 100
} else {
    print("Error! That is not a valid level!")
}

let random1 = Int(arc4random_uniform(difficulty))
let random2 = Int(arc4random_uniform(difficulty))

if choice == 1 { // if user selects addition, do this
    print("What is \(random1) + \(random2)?")
    let answer = Int(readLine(stripNewline: true)!)!
    if answer == (random1+random2) {
        print ("Correct!")
        sleep(1)
    } else {
        print ("Try again! The correct answer was \(random1+random2)!")
        sleep(1)
    }
} else if choice == 2 { // if user selects subtraction, do this
    print("What is \(random1) - \(random2)?")
    let answer = Int(readLine(stripNewline: true)!)!
    if answer == (random1-random2) {
        print ("Correct!")
        sleep(1)
    } else {
        print ("Try again! The correct answer was \(random1-random2)!")
        sleep(1)
    }
} else if choice == 3 { // if user selects multiplication, do this
    print("What is \(random1) * \(random2)?")
    let answer = Int(readLine(stripNewline: true)!)!
    if answer == (random1*random2) {
        print ("Correct!")
        sleep(1)
    } else {
        print ("Try again! The correct answer was \(random1*random2)!")
        sleep(1)
    }
} else if choice == 4 { // if user selects division do this
    //if random1 % i == 0 {
        //factors.append(i)
        //i++
        //k++
        //let drandom = Int(arc4random_uniform())
    //}
    
    if random1 % 1 == 0 {
    } else if random1 % 1 == 1 {
        random1 + 1
    } else if random1 % 1 == 2 {
        random1 + 14
    } else if random1 == 1 {
        random1 + 1
    }
    print("What is \(random1) / 2?")
    let answer = Int(readLine(stripNewline: true)!)
    if answer == (random1/2) {
        print ("Correct!")
        sleep(1)
    } else {
        print ("Try again! The correct answer was \(random1/2)!")
        sleep(1)
    }
}  else {
    print ("Error! That is not a valid operator!")
}

print("Would you like another try?")
sleep(1)
print ("Please select an option!")
print ("1. Yes")
print ("2. No")
print ("Select a number! (1, or 2)")
let restart = Int(readLine(stripNewline: true)!)!
    if restart == 1 {
        start = 0
        sleep(1)
    } else if restart == 2 {
        start = 1
    } else {
        print("Error! That is not a valid operator!")
    }
}
