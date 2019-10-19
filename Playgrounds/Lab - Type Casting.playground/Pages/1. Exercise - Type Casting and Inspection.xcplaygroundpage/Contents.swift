/*:
 ## Exercise - Type Casting and Inspection
 
 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var collections : [Any] = [12.2, "hola", 2, false, 24.3, 4, "adios", true]


for collection in collections{
    if let doubles = collection as? Double{
        print (doubles)
    }else if let integer = collection as? Int{
        print (integer)
        
    }else if let boolean = collection as? Bool{
        print (boolean)
    }else if let strings = collection as? String{
        print (strings)
    }
}
/*:
 Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
 */


/*:
 Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
 */


/*:
 Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
 */


/*:
 Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
 */


//: page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
