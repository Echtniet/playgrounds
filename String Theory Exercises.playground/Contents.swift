import UIKit

/*
 
 Strings are an  critical type in virtually all programming languages. Swift provides powerful tools to solve all of your string-processing needs.
 
 To answer these questions, first read the
 
 1. String Theory notes (on the Canvas site, week 4)
 2. Swift book -- https://docs.swift.org/swift-book/LanguageGuide/StringsAndCharacters.html
 
 Answer each question by just finding the expression -- the Playground will show the result in the results pane. Only print out the expression if it says to do so.

 For instance, if the question said find the character that is 5 removed from the end, you would just write
 
 message[message.index(message.startIndex, offsetBy: 5)]

 If the question had said to print the range of "best", you would write:
 
 print( message.range(of:"best") )
*/

var message = "It was the best of times"

// 0. find the number of characters in message
message.count


// 1. concatenate "!!" to message
message += "!!"

// 2. print the character after "I"
print(message[message.index(after: message.startIndex)])

// 3. print the character before the last "!"
print(message[message.index(before: message.firstIndex(of: "!")!)])

// 4. determine & then print the character 3 removed from the start
print(message.remove(at: message.index(message.startIndex, offsetBy: 2)))

// 5. determine and then print the character 6 removed from the end
print(message.remove(at: message.index(message.endIndex, offsetBy: -6)))

// 6. count the number of "t" characters
var numTs = 0

for ch in message{
    if ch == "T" || ch == "t"{
        numTs += 1
    }
}

// 7. print the even numbered characters (I a h e ...)
for i in stride(from: 0, to: message.count, by: 2){
    let index = message.index(message.startIndex, offsetBy: i)
    print(message[index], terminator: "")
}

// 8. print the location (String.Index) of "worst"


// 9. print the location (String.Index) of "o"
print(message.firstIndex(of: "o")?.encodedOffset)

// 10. See if message contains "really"
if message.contains("really"){
    
}

// 11. insert "very" just before " best"
message.insert(contentsOf: "very", at: message.index(before: message.range(of: " best")!.lowerBound))

// 12. remove "very"
message.removeSubrange(message.range(of: "very")!)

// 13. see if message has a suffix of "times"
if message.hasSuffix("times") {
    <#code#>
}

// 14. remove the very first character of message
message.removeFirst()

// 15. insert "i" at the very beginning of message
message.insert("i", at: message.startIndex)

// 16. print a lowercased version of message
print(message.lowercased())

// 17. print out each word of message (by dividing it)
