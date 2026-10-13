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


    method precioBaseMasBeneficios(beneficios)


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

    method agregarEscala(unaEscala) {
     cantidadDeEscalas = unaEscala

}
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
    

//    method cambiarRolDeCoordinador(unRol){
//        rolDeCoordinador.add(unRol)
//    }
// este no xq agrega en vez de seleccionar.





}


