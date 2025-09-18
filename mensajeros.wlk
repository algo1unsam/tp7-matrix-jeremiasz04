
object morfeo {
    var property pesoBase = 90

    var property transporte = camion

    method peso() {
        return pesoBase + transporte.peso()
    }

    method llamar(){return false} //morfeo no tiene la capacidad de viajar pero necesito que entienda el mensaje

}

object trinity {
    const property peso = 900 

    var pulgarOido = true 
    var meniqueBoca = true 

    method llamar(){
        return pulgarOido and meniqueBoca
    }

}

object neo {
    const property peso = 0

    var credito = 0 
    const costoLlamada = 50

    method cargarSaldo(importe) {
        credito += importe
    }

    method llamar() {
        credito = credito - costoLlamada
    }
}


object camion {
    var property acoplados = 0 
    const pesoAcoplado = 500

    method peso(){
        return acoplados * pesoAcoplado 
    }

}

object monopatin {
    var property peso = 1 
    
}

object puente {

    method dejarPasar(mensajero) {
        return mensajero.peso() <= 1000
}
}

object matrix {
    method dejarPasar(mensajero){return mensajero.llamada()}


}

object paquete {
    const precio = 100
    var importePendiente = precio

    var property destino = puente

    method pagar(importe) {
        importePendiente =  importePendiente - precio
    }

    method estaPago() {
        return importePendiente <= 0
    }
        
    method puedeSerEntregadoPor(mensajero) {
        return self.estaPago() and destino.dejarPasar(mensajero)
    }
    
    
}