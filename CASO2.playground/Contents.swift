import Foundation

func calcularCalorias(actividad: String, minutos: Int) -> Double {
    let tasa: Double
    
    switch actividad.lowercased() {
    case "dormir":
        tasa = 1.08
    case "reposo":
        tasa = 1.66
    default:
        tasa = 0.0
    }
    
    return Double(minutos) * tasa
}

func obtenerEncabezado() -> String {
    return "--- CALCULADORA DE SALUD ---"
}

let actividadEntrada = "reposo"
let tiempoEntrada = 180

print(obtenerEncabezado())

if actividadEntrada != "dormir" && actividadEntrada != "reposo" {
    print("Error: Actividad invalida. Solo se permite 'dormir' o 'reposo'.")
}
else if tiempoEntrada <= 0 {
    print("Error: El tiempo debe ser un numero entero positivo.")
}
else {
    let resultado = calcularCalorias(actividad: actividadEntrada, minutos: tiempoEntrada)
    
    print("Actividad: \(actividadEntrada.uppercased())")
    print("Tiempo: \(tiempoEntrada) minutos")
    print("Calorias consumidas: \(resultado)")
}

var contadorDeAviso = 1
repeat {
    print("\n[Aviso: El paciente debe permanecer en la actividad seleccionada]")
    contadorDeAviso += 1
} while contadorDeAviso <= 1
