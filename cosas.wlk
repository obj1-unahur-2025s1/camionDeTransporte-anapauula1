object rider {
    method peso() = 500
    // le pregunto y me tiene que saber contestar
    method nivelPeligrosidad() = 10
    // conoce ambas cosas
}
object bumbeble {
    var estaTrasformado = false
    method peso() = 800
    method estaTrasformado() = estaTrasformado
    // se acuerde si esta trasnformado
    // y que me sepa responder si lo esta
    method trasformacion(){
        // para cambiarlo
        // cambiar lo primero de arriba la vriable
        estaTrasformado = true
    }
    method nivelPeligrosidad(){
        if(estaTrasformado) 30 else 15
        // expresion ternaria
        // puedo usar la variable porque
        // estoy dentro del objeto
        // cambiar la variable de estar trasnformado
    }
}
object paqueteLadrillos{
    var cantidadLadrillos = 2
    // necesitamos metodo para cambiar la cantidad
    method cantidad(unaCantidad) {cantidadLadrillos = unaCantidad}
    // es un metodo de indicacion
    // para cambiar el valor en numeros
    method nivelPeligrosidad() = 2
    method peso() = 2 * cantidadLadrillos
}
object arena{
    var peso = 100
    method peso(unPeso) {peso = unPeso}
    // nuevo peso
    method nivelPeligrosidad() = 1
    method peso() = peso
}
object bateria{
    var estaConMisiles = false
    method cargarMisiles() {estaConMisiles = true}
    method descargarMisiles() {estaConMisiles = false}
    // con esto manejamos la vriable de arriba
    method peso() = if (estaConMisiles) 300 else 200
    // el if va con parentesis sino da error
    method nivelPeligrosidad() = if (estaConMisiles) 100 else 0
}
object contenedor{
    const cosas= []
    // convendria que hagamos metodos para agregar
    method agregarCosa(unaCosa){
        return cosas.add(unaCosa)
    }
    method eliminarCosa(unaCosa){
        return cosas.remove(unaCosa)
    }
    method sumaCosas() {
        // le tengo que poner un trasformer
        // cosas --> no son numeros
       return cosas.sum({c => c.peso()})
       // la misma variable va con el punto y el metodo
       // porque quiero sumar el peso
    }
    method peso() = 100 + self.sumaCosas()
    // es el metodo de arriba mas el peso fijo
    method nivelPeligrosidad(){
        if(cosas.isEmpty()) 0 else cosas.max({p => p.nivelPeligrosidad()}).nivelPeligrosidad()
        // c debe tener elementos por eso si no tiene elementos
        // me devuelve cero
        // devuelve el objeto que tiene mayor 
        // tiene que devolver el NUMERO por eso llamamos a peligrosidad
    }
}
object residuos{
    var property peso = 200
    // ver despues esta propiedad
    // es como un atributo libre 
    method nivelPeligrosidad() = 200
}
object embalaje {
    var cosaEnvuelta = arena 
    // tiene que saber responder esto
    method peso() = cosaEnvuelta.peso()
    // le preguntamos a la variable osea al objeto
    // el peso del mismo
    method nivelPeligrosidad(){
        return cosaEnvuelta.nivelPeligrosidad() / 2
        // dice que es la peligrosidad 
        // la mitad
    }
    method cosaNueva(objeto){cosaEnvuelta = objeto}
}
