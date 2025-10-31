
class Corsa {
    var property color = "rojo"
    method velocidadMaxima() = 150
    method peso(){
        return 1300
    } 
    method capacidadDePasajeros() {
        return 4
    }
}
class Kwid {
    var property color = "rojo"
    var property tieneTanqueAdicional = true
    method capacidadDePasajeros() {
        if (tieneTanqueAdicional) {
            return 4
        } else {
            return 3
        }
    }
    method velocidadMaxima(){
        if (tieneTanqueAdicional) {
            return 120
        } else {
            return 110
        }
    }
    method peso(){
        return 900
    }
    method colorDelAuto() {
        return "azul"
    }

}
class Traffic {
    var property motor = pulenta
    var property interiror = interiorComodo
    method capacidadDePasajeros() {
        return interiror.capacidadDePasajeros()
    }
    method velocidadMaxima(){
        return motor.velocidad()
    }
    method peso(){
        return 900
    }
    method colorDelAuto() {
        return "blanco"
    }

}

object interiorComodo {
    method capacidadDePasajeros(){
        return 5
    }
    method peso(){
        return 700
    }
}
object interiorPopular {
    method capacidadDePasajeros(){
        return 12
    }
    method peso(){
        return 1000
    }
}

object pulenta {
    method peso(){
        return 800
    }
    method velocidad(){
        return 130
    }
}
object bataton {
    method peso(){
        return 500
    }
    method velocidad(){
        return 80
    }
}

class Especial{
  var property capacidadDePasajeros 
  var property velocidadMaxima
  var property peso
  var property color
}