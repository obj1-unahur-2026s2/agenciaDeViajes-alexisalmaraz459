class Packs {
    var duracionDePack
    var precioBase
    var coordinador
    const beneficiosEspeciales = []

    method duracionDePack()
    method precioBase()
    method coordinador()
    method beneficiosEspeciales()

    method agregarBeneficio(unBeneficio) {
  beneficiosEspeciales.add(unBeneficio)
}
  

    method coordinador(unCoordinador) {
  coordinador = unCoordinador
}

    method precioDeBeneficios() = 
    
    beneficiosEspeciales.filter({beneficio => beneficio.estaVigente()}).sum({beneficio => beneficio.costo()})

    
    method precioTotal() = precioBase + self.precioDeBeneficios()


}

////////////// pack nacional

class PackNacionales inherits Packs{
    var provincia
    const actividadesIncluidas = []

    method actividadesIncluidas() = actividadesIncluidas
    method provincia() = provincia


    method agregarActividad(unaActividad) {
    actividadesIncluidas.add(unaActividad)



}
}


////////// pack internacional 



class PackInternacionales inherits Packs{
    var pais
    var cantidadDeEscalas
    var LugarDeInteres = true

    method pais() = pais
    method cantidadDeEscalas() = cantidadDeEscalas
    method LugarDeInteres() = LugarDeInteres

    method cambiarLugarDeInteres(){
        LugarDeInteres = false
    }

    override method precioTotal() = super() + super()* 0.20

}
//////// coordinador

class Coordinador{

    var cantDeViajesRealizados
    var estaMotivado = true
    var añosDeExp
    var rolDeCoordinador
    const rolesAptos = ["guia", "asistente", "acompañante"]

    method cantDeViajesRealizados() = cantDeViajesRealizados
    method estaMotivado() = estaMotivado
    method añosDeExp() = añosDeExp
    method rolDeCoordinador() = rolDeCoordinador

    method cambiarMotivacion(){
        estaMotivado = false
    }

    method cambiarRolDeCoordinador(unRol){
        if(!rolesAptos.contains(unRol)){
            self.error("Ese rol no existe, selecciona uno entre: guia, asistente o acompañante")
        }
        else{
            rolDeCoordinador = unRol
    }
    
    }




//    method cambiarRolDeCoordinador(unRol){
//        rolDeCoordinador.add(unRol)
//    }
// este no xq agrega en vez de seleccionar.


////////////////// beneficios especiales

}

class beneficiosEspeciales{
   
    var costo
    var beneficio
    var estaVigente = true


    method estaVigente() = estaVigente

    method cambiarEstadoVigencia(){
        estaVigente = false
    }
 

}


