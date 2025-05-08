object knighRider{
    //  nos sabe decir ambas cosas
    method peso() = 500
    method peligrosidad() = 10
    method consecuenciaCarga(){}
    // vacio porque cuando carga no hace nada
}
object bumbeble {
    var estaComoRobot = false
    method estaComoRobot() = estaComoRobot
    method TrasformarComoAuto() {estaComoRobot = false}
    // esto es porque si le quiero cambiar el valor
    method trasformarseEnRobot() {estaComoRobot = true}
    // esto tambien
    method peso() = 800
    method peligrosidad(){
        if (estaComoRobot) 30 else 15
    }
    method consecuenciaCarga(){self.trasformarseEnRobot()}
    // se transforma en robot
}
object paqueteLadrillos{
    var cantidadLadrillos = 2
    // necesitamos metodo para cambiar la cantidad
    method cantidad(unaCantidad) {cantidadLadrillos = unaCantidad}
    // es un metodo de indicacion
    // para cambiar el valor en numeros
    method nivelPeligrosidad() = 2
    method peso() = 2 * cantidadLadrillos
    method consecuenciaCarga(){self.cantidad(12)}
    // cambia la cantidad de ladrillos
}
object arena{
    var peso = 100
    method peso(unPeso) {peso = unPeso}
    // nuevo peso
    method nivelPeligrosidad() = 1
    method peso() = peso
    method consecuenciaCarga(){self.peso(peso - 10)}
}
object bateria{
    var estaArmado = true
    method estaConMisiles(){estaArmado = true}
    // para cambiar las variables
    method estaDesarmado() {estaArmado = false}
    // hacemos metodos
    method peso(){
        if(estaArmado) 300 else 200
        // forma ternaria de poner la alternativa
    }
    method peligrosidad(){
        if(estaArmado) 100 else 0
        // condicion para que se cumpla
        // debe de ser verdadera
    }
    method consecuenciaCarga(){self.estaConMisiles()}
    // esta armado
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
    method maxPeligroso(){
        // le doy un trasformer tambien
        return cosas.max({p => p.peligrosidad()}.peligrosidad())
        // para que muestre el OBJETO. si no nos muetsra
        // el numero
    }
    // EL MAX CON EL TRASFORMER me devuelve el objeto
    // yo quiero que devuelva la peligrosidad en numero
    method consencuenciaDeLaCarga() {
      cosas.forEarch({c=>c.consencuenciaDeLaCarga()})}
      // no hace nada esto es como para disimular
}
object residuos{
    var property peso = 200
    // ver despues esta propiedad
    // es como un atributo libre 
    method nivelPeligrosidad() = 200
    method consecuenciaCarga(){peso += 15}
    // la variable peso la incrementa eso hay q hacer
    // se hace con el property
    // le suma 10 a la variable actual
}
object embalaje {
    var cosaEnvuelta = arena 
    // tiene que saber responder esto
    method cosa(unaCosa) {cosaEnvuelta = unaCosa}
    method peso() = cosaEnvuelta.peso()
    // le preguntamos a la variable osea al objeto
    // el peso del mismo
    method nivelPeligrosidad(){
        return cosaEnvuelta.nivelPeligrosidad() / 2
        // dice que es la peligrosidad 
        // la mitad
    }
    method consecuenciaCarga(){}
    // vacio porque no hace nada pero debe estar igual
}
