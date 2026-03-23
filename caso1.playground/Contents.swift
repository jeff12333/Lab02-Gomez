import Cocoa

var capital: Double = 1000000
var tasa: Double = 0.09


let intereses = capital * tasa

print("Intereses generados: $\(intereses)")

if intereses > 7000 {
    print("Los intereses superan $7000. Se reinvierten.")
    capital += intereses
} else {
    print("Los intereses no superan $7000. No se reinvierten.")
}

print("Capital final en la cuenta: $\(capital)")
