import Cocoa

func funcionPrincipal(texto: String, limite: Int) {
    let palabra = texto.replacingOccurrences(of: "Buscar ", with: "").uppercased()
    
    if palabra == "TECSUP" {
        print("TECSUP (Instituto de Educación Superior Tecnológico)")
    } else if palabra == "MIT" {
        print("MIT (Massachusetts Institute of Technology)")
    }
    else if limite >= 1 {
        buscarUNI(palabra: palabra, limite: limite)
    }
    else {
        print("No se puede continuar con la busqueda")
    }
}

func buscarUNI(palabra: String, limite: Int) {
    if palabra == "UNI" {
        print("UNI (Universidad Nacional de Ingeniería)")
    }
    else if limite >= 2 {
        buscarUNALM(palabra: palabra, limite: limite)
    }
    else {
        print("No se puede continuar con la busqueda")
    }
}

func buscarUNALM(palabra: String, limite: Int) {
    if palabra == "UNALM" {
        print("UNALM (Universidad Nacional Agraria La Molina)")
    }
    else if limite >= 3 {
        buscarUPM(palabra: palabra)
    }
    else {
        print("No se puede continuar con la busqueda")
    }
}

func buscarUPM(palabra: String) {
    if palabra == "UPM" {
        print("UPM (Universidad Politécnica de Madrid)")
    } else {
        print("No se puede continuar con la busqueda")
    }
}

funcionPrincipal(texto: "Buscar UPM", limite: 0)
