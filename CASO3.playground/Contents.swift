import Cocoa

// Datos ingresados (simulados)
var precio: Double = 50
var cantidad: Double = 4
var descuento: Double = 10

// Proceso
let subtotal = precio * cantidad
let montoDescuento = subtotal * (descuento / 100)
let pagoTotal = subtotal - montoDescuento

// Salida
print("Subtotal: $\(subtotal)")
print("Descuento: $\(montoDescuento)")
print("Pago total: $\(pagoTotal)")
