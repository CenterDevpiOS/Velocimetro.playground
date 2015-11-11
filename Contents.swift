//: Playground - noun: a place where people can play
//: Created By : José Gregorio Aguilar Marín



import UIKit



//ENUMERACION

enum Velocidades : Int{
    
    case
    
    Apagado = 0,
    
    VelocidadBaja = 20,
    
    VelocidadMedia = 50,
    
    VelocidadAlta = 120
    
    
    
    init(velocidadInicial : Velocidades){
        
        self = .Apagado
        
    }
    
}


//CLASE AUTO

class Auto {
    
    var velocidad = Velocidades.Apagado
    
    var Cvi:Int = 0 //Controlador de Velocidad Inicial
    
    init(){
        
        self.velocidad
        
    }
    
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String){
        
        var leyenda : String
        
        switch self.velocidad {
            
            case Velocidades.Apagado:
            
                if(self.velocidad == .Apagado && Cvi == 0){
                
                    Cvi = 1
                
                    self.velocidad = .Apagado
                
                    leyenda = "Apagado"
                
                }else{
                
                    self.velocidad = .VelocidadBaja
                
                    leyenda = "Velocidad Baja"
                
                }
            
            case Velocidades.VelocidadBaja:
            
                self.velocidad = .VelocidadMedia
            
                leyenda = "Velocidad Media"
            
            case Velocidades.VelocidadMedia:
            
                self.velocidad = .VelocidadAlta
            
                leyenda = "Velocidad Alta"
            
            case Velocidades.VelocidadAlta:
            
                self.velocidad = .VelocidadMedia
            
                leyenda = "Velocidad Media"
            
        }
        
        
        
        return (self.velocidad.rawValue, leyenda)
        
    }
    
}


//INSTANCIA DE LA CASE AUTO

var auto = Auto()

//AUTO EN MARCHA

for i in 1...20{
    
    print(auto.cambioDeVelocidad())
    
}