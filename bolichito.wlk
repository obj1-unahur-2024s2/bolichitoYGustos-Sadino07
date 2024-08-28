import objetos.*
import personas.*

object bolichito {
  var objetoEnMostrador = pelota
  var objetoEnVidriera = munieco
  method objetoEnMostrador(unObjeto) {objetoEnMostrador = unObjeto}  
  method objetoEnVidriera(unObjeto){objetoEnVidriera = unObjeto}
  method objetoEnMostrador() = objetoEnMostrador
  method objetoEnVidriera() = objetoEnVidriera
  method esBrillante() = objetoEnMostrador.esBrillante() && objetoEnVidriera.esBrillante()
  method esMonocromatico() =  objetoEnMostrador.color() == objetoEnVidriera.color()
  method estaEquilibrado() =  objetoEnMostrador.peso() > objetoEnVidriera.peso()
  method tieneObjetoDeColor(unColor) =  objetoEnMostrador.color() == unColor
                                        ||  objetoEnVidriera.color() == unColor
  method puedeMejorar() = not self.estaEquilibrado() || self.esMonocromatico()
  method puedeOfrecerAlgoA(unaPersona) = unaPersona.leGusta(objetoEnMostrador)
                                          || unaPersona.leGusta(objetoEnMostrador)
  
}