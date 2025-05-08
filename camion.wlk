import cosas.*
object camion{
    const carga = [] // lista
    method descargar(unaCosa) = carga.remove(unaCosa)
    method sumCosas() = carga.sum({p => p.peso()})
    method peso(){
        return 1000 + self.sumCosas()
    }
    method cargar(unaCosa){
        carga.add(unaCosa) // añade el elemento a la carga
        unaCosa.consecuenciaCarga()
        // porque al añadirla debe de tener una consecuencia
    }
    // NO ES CORRECTO ESTE EJERCICIO
    method sonPares() = self.sumCosas() / 2
    // debe ser divisible por 2 para que sea par
    method determinadoValor(unValor){
        return carga.any({p => p.peso() == unValor})
        // si cumple este valor que es igual al valor
        // que se pasa por parametro porque no sabemos cual
        // es el valor que necesita tener
    }
    method obtenerCosa(unaPeligrosidad){
        return carga.find({p => p.peligrosidad() == unaPeligrosidad})
        // supongo que es de esta forma)?
    }
    method cosasMayorPeligrosidad(unNivel){
        return carga.filter({p => p.peligrosidad() > unNivel})
        // debe ser mayor al nivel que se pasa por parametro
    }
    method cosaMayor(unaCosa){
        // debe de ser mayor a una cosa
       return carga.filter({p => p.peligrosidad() > unaCosa.peligrosidad()})
        // tiene que hacer una nueva lista de peligrosidad
        // donde la peligrosidad sea mayor a la de unaCosa (el peligro)
    }
    method estaExcedidoDePeso(){
        return self.peso() > 25000
    }
    method puedeCircular(unNivel){
        return not self.estaExcedidoDePeso() and self.cosasMayorPeligrosidad(unNivel).isEmpty()
        // basicamente reutilizamos metodos
        // cambiarle los nombres porque son parecidos
    }
    method tieneAlgoQuePesaEntre(valorMin,valorMax){
        // si tiene algo que pesa entre esos valores
       return carga.any({p=> p.peso().between(valorMin, valorMax)})
       // si el peso esta entre estos valores
    }
    method cosaMasPesada(){
        return carga.max({p=> p.peso()})
        // me devuelve el objeto porque tiene un traformer
    }
}