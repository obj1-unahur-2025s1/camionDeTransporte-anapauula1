import cosas.*
object camion {
    const carga = []
    method cargar(unaCosa){
        carga.add(unaCosa)
    }
    method descargar(unaCosa){
        carga.remove(unaCosa)
    }
    method pesoTotal(){
        return 100 + self.cargaTotal()
    }
    method cargaTotal(){
        return carga.sum({c => c.peso()})
    }
    method todoPesoPar(){
        return carga.all({c => c.peso().even()})
    }
    method algoQuePesa(unValor){
       return carga.any({c => c.peso() == unValor})
    }
    method cosaConPeligrosidad(unNivel){
        return carga.find({c => c.nivelPeligrosidad() > unNivel})
    }
}