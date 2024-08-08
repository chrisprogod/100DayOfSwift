import SwiftUI

var score = 1_000_000 //underscore do not affect the value of the integer
print(score)

score = score + 2
score += 1000000
print(score)
print("It is", score.isMultiple(of: 2), "that score is a multiple of 2")

