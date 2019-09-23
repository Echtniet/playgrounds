import UIKit


// Write one or more statements to accomplish each task:

// 0. Create a String optional, name. Don't assign it a value.
var name:String?

// 1. Create a Double optional, stockPrice. Assign it the value 100.0
var stockPrice:Double? = 100.0

// 2. Double the value of stockPrice.
stockPrice = 2 * stockPrice!

// 3. Create an implicitly unwrapped optional, guess; assign it a random vbalue between 1-100
var guess:Double! = Double.random(in: 1.0 ... 100.0)

// 4. Increment guess's value by 50.0
guess += 50.0



var voltageTF = UITextField()
voltageTF.text = "25.0"

// 5. Write an if-let statement that will take the contents of voltageTF, and (if possible), store half its value back in the text field. If not possible, store "0.0" in voltageTF.
if let volt = Double(voltageTF.text!){
    voltageTF.text = String(volt / 2)
}else{
    voltageTF.text = String(0.0)
}


// 6. Write a closure with two parameters - an Int and an [Int] that will return the number of times the Int is found in the array.
let count = {(key:Int, randomIntArray:[Int]) -> Int in
    var count = 0
    for randomInt in randomIntArray{
        if key == randomInt {
            count += 1
        }
    }
    return count
}


// 7. Assign the closure to a variable, count, and then invoke it with the values 5 and [5, 10, 15, 5]
count(5, [5, 10, 15, 5])


// 8. What is the *type* of the closure that you just created?
//(Int, [Int]) -> Int

// 9. Write a function quest9(demo:), where the parameter demo will be of type (Int, [Int]) -> Int

func quest9(demo:(Int, [Int]) -> Int){
    print(demo(5, [50, 250, 350]))
}

// 10. Invoke quest9(demo:) with the closure that you wrote in 9. Inside quest9(demo:), print out the results of invoking demo with the values 5 and [50, 250, 350].

quest9 (demo:count)
