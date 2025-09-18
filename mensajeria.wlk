import mensajeros.*

object mensajeria {

    const property empleados = []

    method contratar(empleado){ empleados.add(empleado) }

    method despedir(empleado){ empleados.remove(empleado) }

    method despedirATodos() {empleados.clear()}

    method MensajeriaEsGrande(){
        return empleados.size() >= 2
    }

    method primerEmpleado(){return empleados.get(0)}

    method EntregadoPorPrimerEmpleado(paquete){
        paquete.puedeSerEntregadoPor(self.primerEmpleado())
    }

    method ultimoEmpleado(){
        return empleados.get(empleados.size()-1)
    }

    method pesoUltimoEmpleado(){
        return self.ultimoEmpleado().peso()
    }

}


