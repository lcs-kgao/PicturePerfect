//
//  main.swift
//  PicturePerfect
//

import Foundation

// INPUT
// Global variable to use later in program
var countOfPhotoArrangementsToBeConsidered = 3

// Write a loop to actually collect the number of photo arrangements to be considered
// e.g.: write the rest of the INPUT section
while true {
    
    // Add the prompt
    print("How many photo arrangements will be considered?")
    
    //Test #1 :Waiting for input, check for nil
    guard let givenInput = readLine() else {
        
        continue
    }
    //Test #2 :Check for integer
    guard let givenInteger = Int(givenInput) else{
        continue
    }
    
    //Test #3: Range
    if givenInteger < 0 || givenInteger > 10 {
        continue
    }
    countOfPhotoArrangementsToBeConsidered = givenInteger
    break
}

//Create variables for later
var numberOfPictures = 0
var multipier = 0
var perimeters = 0

// PROCESS & OUTPUT
// Implement the primary logic of the problem here
// Some output may be given here if you desire

// Collect the number of pictures in each arrangement using this loop
for counter in 1...countOfPhotoArrangementsToBeConsidered {
    
    // Ask how many pictures in this particular arrangement
    print("How many pictures in photo arrangement #\(counter)?")
    
    // Get the input (use guard-let to guarantee it is not nil)
    // and then print it out
    guard let givenInput = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    guard let givenInteger = Int(givenInput) else{
        continue
    }
    if givenInteger < 0 || givenInteger > 65000 {
        continue
    }
    
    numberOfPictures = givenInteger
    // What was provided?
    
    let squareroot = sqrt(Double(numberOfPictures))
    
    //Implement the rest of your logic here...
    for numbers in stride(from: Int(squareroot), through: 1, by: -1) {
        if numberOfPictures % numbers == 0 {
            multipier = numberOfPictures / numbers
            perimeters = 2 * (multipier + numbers)
            print("Minimum perimeter is \(perimeters) with dimensions \(numbers) by \(multipier)")
            break
        }
    }
}


