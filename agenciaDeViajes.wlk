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

class PackNacionales inherits Packs{
    var provincia
    const actividadesIncluidas = []

    method actividadesIncluidas() = actividadesIncluidas
    method provincia() = provincia


    method agregarActividad(unaActividad) {
    actividadesIncluidas.add(unaActividad)



}
}



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




class Coordinador{

    var cantDeViajesRealizados
    var estaMotivado = true
    var añosDeExp
    var rolDeGuia = "guia"




}


