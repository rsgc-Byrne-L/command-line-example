//
//  main.swift
//  basic-command-line
//
//  Created by Liam Byrne on 2016-12-16.
//  Copyright © 2015 Royal St. George's College. All rights reserved.
//

import Foundation
let answer:Int = 0 // The variable to hold the correct answer depending on the random number
let choice:Int = 0 // The variable to hold the user input
var difficulty:UInt32 = 0

print ("Welcome to Liam's Math Flash Cards!")
print ("Please select a operator!")
print ("1. +")
print ("2. -")
print ("3. *")
print ("4. /")

// Level system (Easy, Medium, Hard)
let level = Int(readLine(stripNewline: true)!)! // The variable to hold the level the user selects
if level == 1 {
    difficulty = 10
} else if level == 2 {
    difficulty = 50
} else if level == 3 {
    difficulty = 100
} else {
    print("Error! That is not a valid choice")
}

let random1 = Int(arc4random_uniform(difficulty + 5))
let random2 = Int(arc4random_uniform(difficulty + 5))

print("\(random1) + \(random2)")
2
if choice == 1 { // if user selects addition, do this
    if answer == (random1+random2) {
        print ("correct!")
    } else {
        print ("try again!")
    }
} else if choice == 2 { // if user selects subtraction, do this
    if answer == (random1-random2) {
        print ("correct!")
    } else {
        print ("try again!")
    }
} else if choice == 3 { // if user selects multiplication, do this
    if answer == (random1*random2) {
        print ("correct!")
    } else {
        print ("try again")
    }
} else if choice == 4 { // if user selects division do this
    if answer == (random1/random2) {
        print ("correct!")
    } else {
        print ("try again")
    }
}
