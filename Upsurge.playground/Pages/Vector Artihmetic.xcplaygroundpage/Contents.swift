//: ## Vector Arithmetic
//: This example shows how to perform basic vector operations on arrays
import Upsurge
//: Regular Swift arrays can be used to perform some arithmetic operations. Let's add all the elements in an array.
let array = [1.0, 2.0, 3.0, 4.0, 5.0]
let arraySum = sum(array)
//: Upsurge's `RealArray`s are more powerful than regular Swift arrays for doing math. For instance, `RealArray` overloads `+` and `+=` to mean addition, whereas for Swift arrays they mean concatenation. Let's define two `RealArray`s and add them together.
let a: ValueArray<Double> = [1.0, 3.0, 5.0, 7.0]
let b: ValueArray<Double> = [2.0, 4.0, 6.0, 8//: You can also perform operation that are unique to `RealArray`. This is how you would compute the dot production between two arrays
.0]
let c = a + b
le//: You can also perform operations on parts of an array using the usual slice syntax
t product = a • b
let d = a[//: And you can of course mix operations into more elaborate expressions
0..<2] + b[2..<4]
let result = sqrt(a[0..<2] * 