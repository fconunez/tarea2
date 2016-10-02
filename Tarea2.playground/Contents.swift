//: Velocimentro
import UIKit

enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelociadMedia = 50, VelocidadAlta = 120
    
    init (velocidadIncial: Velocidades){
        self =  velocidadIncial
    }
}


class Auto{
    var velocidad : Velocidades //Declaracion de variable velocidad de tipo enum Velocidades
    
    init(){//Inicializar la clase auto con la funcion de inicializacion de la enumeracion Velocidades en estado apagado
        self.velocidad = Velocidades.Apagado
    }
  
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        if velocidad == Velocidades.VelocidadAlta {//En caso que la velocidad se alta
            self.velocidad = Velocidades.VelociadMedia
            
        }else if velocidad == Velocidades.VelociadMedia{ // En caso que la velocidad sea Media
            velocidad = Velocidades.VelocidadAlta
        }

        if velocidad  == Velocidades.VelocidadBaja{ // En caso que la velocidad sea Baja
            self.velocidad = Velocidades.VelociadMedia
        }
        
        if velocidad == Velocidades.Apagado {// En caso que la velocidad este en apagado
            self.velocidad = Velocidades.VelocidadBaja
        }
        //Regresar valores
        return ( self.velocidad.rawValue , String(describing: self.velocidad) )
    }
}

var carrito = Auto() // Crear instancia de nombre carrito

print("\(carrito.velocidad.rawValue) , \(carrito.velocidad)")// Imprime la primera opcion que es apagado

for i in 1...20{//ejecutar 20  veces
    
    var estado = carrito.cambioDeVelocidad()
    print("\(estado.0), \(estado.1)")
    
    }
