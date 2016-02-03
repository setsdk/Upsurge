//: ## Matrix Arithmetic
//: This example shows how to perform basic matrix operations with Upsurge
import Upsurge
//: Let's define two matrices using row notation
let A = Matrix<Double>([
    [1,  1],
    [1, -1]
])
let C = Matrix<Double>([
    [3],
   //: Now let' find the matrix `B` such that `A*B=C`
 [1]
])
let B = inv//: And verify the result
(A) * C
let r = //: You can also operate on a matrix row or column the same way as you would with a RealArray
A*B - C
var col = A.column(0)
let diff = col - [10, 1]
col 