import Cocoa

var greeting = "Hello, playground"

// Create an array of strings, then write some code that prints the number of itens in the array and also the number of unique items in the array.

var myArray = [String]()
print(myArray)

myArray.append("Harry Potter")
myArray.append("Lilian Potter")
myArray.append("James Potter")
myArray.append("Ron Weasley")
myArray.append("Hermione Granger")
myArray.append("Rubeus Hagrid")
myArray.append("Alvus Dumbledore")
myArray.append("Severus Snape")
myArray.append("Sirius Black")
myArray.append("Lupin")
myArray.append("Harry Potter")
myArray.append("Draco Malfoy")
myArray.append("Hermione Granger")
myArray.append("Dolby")
myArray.append("Moody Eye")
myArray.append("Severus Snape")
myArray.append("Harry Potter")
myArray.append("Ron Weasley")
myArray.append("Lupin")
myArray.append("Harry Potter")
myArray.append("Draco Malfoy")
myArray.append("Hermione Granger")
myArray.append("Dolby")
myArray.append("Moody Eye")
myArray.append("Hermione Granger")

print("The number of items in myArray is:", myArray.count)
var mySet = Set(myArray)
print("And the number of unique items in myArray is:", mySet.count)
