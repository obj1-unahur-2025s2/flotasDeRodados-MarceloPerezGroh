import rodados.*

class Dependencia {
  const flota = []
  var property cantidadDeEmpleados = 5
  method agregarAFlota(rodado){
    flota.add(rodado)
  }
  method quitarDeFlota(rodado) {
    flota.remove(rodado)
  }
  method pesoTotalFlota() {
    flota.sum({f => f.peso()})
  }
  method estaBienEquipado(){
    self.tieneAlMenos3Rodados(3) and self.todosVanAMasDe100()
  }
  
  method tieneAlMenos3Rodados(cantidad){
    return flota.size() >= cantidad
  }
  method todosVanAMasDe100(){
    return flota.all({f => f.velocidadMaxima() >= 100})
  }
  method capacidadTotalEnColor(unColor){
    self.rodadoDelColor(unColor).sum({ f => f.capacidadDePasajeros()})
  }
  method rodadoDelColor(unColor){
        return flota.filter({ f => f.color() == unColor })
    }
  method colorDelRodadoMasRapido(){
        flota.max({f => f.velocidadMaxima()}).color()
  }
  method capacidadFaltante(){
        return 0.max(cantidadDeEmpleados - flota.sum({ f => f.capacidadDePasajeros()}))
  }
  method esGrande(){
        return cantidadDeEmpleados >= 40 and self.tieneAlMenos3Rodados(5)
  }   

}
