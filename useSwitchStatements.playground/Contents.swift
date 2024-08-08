import SwiftUI

enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.unknown

switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .snow:
    print("School is cancelled.")
case .wind:
    print("Wear something warm")
case .unknown:
    print("Our forecast generator is broken!")
    
}

let city = "Metropolis"

switch city {
case "Gotham":
    print("Hello Batman")
case "Metropolis":
    print("Hello Super-Man")
default:
    print("Who tf are you")
}

//if forecast == .sun {
//    print("It should be a nice day.")
//} else if forecast == .rain {
//    print("Pack an umbrella.")
//} else if forecast == .wind {
//    print("Wear something warm")
//} else if forecast == .rain {
//    print("School is cancelled.")
//} else {
//    print("Our forecast generator is broken!")
//}
///That works, but it has problems:
///We keep having to write forecast, even though we’re checking the same thing each time.
///I accidentally checked .rain twice, even though the second check can never be true because the second check is only performed if the first check failed.
///I didn’t check .  at all, so we’re missing functionality.
