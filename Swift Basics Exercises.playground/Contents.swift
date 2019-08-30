//: Playground - noun: a place where people can play

import Cocoa

/* Problems 0-2 require you write a function.
 
 Write it in the space below the question, and then print out what it returns using the arguments provided in the example.
 */

/*
 0. Oh, no, you've been caught speeding! You will write a function, travelling(), that will be passed in
 a) your speed,
 b) the speed limit,
 c) whether it is your birthday, and then return the amount of the fine.
 
 If it's not your birthday:
 
 Excess Speed:      Fine:
 ========================
 1-10                100
 11-20               200
 21+                 500
 
 On your birthday, you get a break:
 
 Excess Speed:      Fine:
 ========================
 6-15                100
 16-25               200
 26+                 500
 
 
 Examples:
 
 Write travelling(at:speedLimit:isBirthday:)  with an if-else statement and test it with these values:
 
 travelling(at:50, speedLimit:60, isBirthday:false) -> 0
 travelling(at:50, speedLimit:45, isBirthday:false) -> 100
 travelling(at:50, speedLimit:35, isBirthday:false) -> 200
 travelling(at:50, speedLimit:35, isBirthday:true) -> 100
 
 Write travelling2(at:speedLimit:isBirthday:) with a switch statement, and test it with the same values:
 
 travelling2(at:50, speedLimit:60, isBirthday:false) -> 0
 travelling2(at:50, speedLimit:45, isBirthday:false) -> 100
 travelling2(at:50, speedLimit:35, isBirthday:false) -> 200
 travelling2(at:50, speedLimit:35, isBirthday:true) -> 100
 
 */

/// Calculates ticket given the speed and speedlimit
///
/// - Parameters:
///   - speed: speed travelling at
///   - speedLimit: max speed allowed
///   - bDay: is today your birthday
/// - Returns: return ticket amount
func traveling(speed:Int, speedLimit:Int, bDay:Bool) -> Int{
    
    if bDay {
        if speed > speedLimit + 26 {
            return 500
        }else if speed > speedLimit + 16{
            return 200
        }else if speed > speedLimit + 6{
            return 100
        }
    }else {
        if speed > speedLimit + 21 {
            return 500
        }else if speed > speedLimit + 11{
            return 200
        }else if speed > speedLimit + 1{
            return 100
        }
    }
    
    return 0
}

/// Calculates ticket given the speed and speedlimit
///
/// - Parameters:
///   - speed: speed travelling at
///   - speedLimit: max speed allowed
///   - bDay: is today your birthday
/// - Returns: return ticket amount
func traveling2(speed:Int, speedLimit:Int, bDay:Bool) -> Int{
    if bDay{
        switch speed - speedLimit{
        case 6...15:
            return 100
        case 16...25:
            return 200
        case let x where x > 25:
            return 500
        default:
            return 0
        }
    }else{
        switch speed - speedLimit{
        case 1...10:
            return 100
        case 11...20:
            return 200
        case let x where x > 20:
            return 500
        default:
            return 0
        }
    }
}

print(traveling(speed: 50, speedLimit: 60, bDay: false))
print(traveling(speed: 50, speedLimit: 45, bDay: false))
print(traveling(speed: 50, speedLimit: 35, bDay: false))
print(traveling(speed: 50, speedLimit: 35, bDay: true))
print(traveling2(speed: 50, speedLimit: 60, bDay: false))
print(traveling2(speed: 50, speedLimit: 45, bDay: false))
print(traveling2(speed: 50, speedLimit: 35, bDay: false))
print(traveling2(speed: 50, speedLimit: 35, bDay: true))


/* 1. Write a function, lucky13() that is passed in an array, and returns true if it contains no 1's and no 3's, false otherwise.
 Just use a for-in loop, subscripts, and basic logic to solve this problem, don't look for any magic framework method to solve it
 
 Example:
 
 
 lucky13([5, 10, 15]) -> false
 lucky13([ ]) -> false
 lucky13([1, 10, 15]) -> true
 lucky13([1, 3, 10, 15]) -> true
 
 
 */

/// Check if there are number 1 and 3 in the array
///
/// - Parameter arr: array of integers
/// - Returns: true if 1 or 3 was found else false
func lucky13(arr:[Int]) -> Bool{
    for x in arr{
        if x == 1 || x == 3{
            return true
        }
    }
    return false
}

print(lucky13(arr: [5, 10, 15]))
print(lucky13(arr: []))
print(lucky13(arr: [1, 10, 15]))
print(lucky13(arr: [1, 3, 10, 15]))



/* 2. Write a function, numDaysIn(month:year:), that will be passed in the month and year, and return the number of days in it. Use a switch statement as part of your solution.
 
 Note that February has 28 or 29 days -- the latter if it is a leap year. The pseudocode for a leap year is as follows:
 
 if year is not divisible by 4 then it is a common year
 else if year is not divisible by 100 then it is a leap year
 else if year is not divisible by 400 then it is a common year
 else it is a leap year
 
 
 Example:
 
 numDaysIn(month:"September", year:2018) -> 30
 numDaysIn(month:"January", year: 2016) -> 31
 numDaysIn(month:"February", year: 2016) -> 29
 numDaysIn(month:"February", year: 2015) -> 28
 
 
 */



/// checks the month and year and return a the amount of days
///
/// - Parameters:
///   - month: month in string value
///   - year: year in int value
/// - Returns: amount of days given the month and year
func numDaysIn(month:String, year:Int) -> Int{
    switch month{
    case "January", "March", "May", "July", "August", "October", "December":
        return 31
    case "April", "June", "September", "November":
        return 30
    case "February":
        if year % 4 != 0 {
            return 28
        } else if year % 100 != 0 {
            return 29
        } else if year % 400 != 0{
            return 28
        }
    default:
        return 0
    }
    return 0
}

print(numDaysIn(month:"September", year:2018))
print(numDaysIn(month:"January", year: 2016))
print(numDaysIn(month:"February", year: 2016))
print(numDaysIn(month:"February", year: 2015))







/* 3. Study the following function, write a brief comment explaining what it does, and come up with a better function name */

func myst(_ data:[Int]) -> [Int] {
    
    if data.count >= 3 && data.count % 2 == 1 {
        return [data[data.count/2 - 1], data[data.count/2], data[data.count/2 + 1]]
    } else {
        return [ ]
    }
    
    
}
// this function takes an array and if the array has an uneven number of elements greater than 3 then it return an array of the 3 elements in the middel of the array passed. a better name for this array would be arrayMiddleThreeValues



