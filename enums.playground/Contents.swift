import SwiftUI

//Enums are used to avoid mistakes that can occur if a string is not written properly or is not part of given selection
//Ex:
var selected = "Monday"
selected = "Tuesday"
selected = "Thursday"
selected = "January "
selected = "sunday"
// In this case, enums can helps us store data and make sure we never accidently type  something wrong

enum Weekday {
case monday, tuesday, wednesday, thursday, friday, saturday, sunday
}

var day = Weekday.monday
day = .saturday
print(day)


