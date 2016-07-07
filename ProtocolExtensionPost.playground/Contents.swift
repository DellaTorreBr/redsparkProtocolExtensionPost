//: Playground - noun: a place where people can play

import UIKit


protocol HelloProtocol {
    
    func getLanguage() -> String
    func helloWorld()
    func helloUniverse()
}

// Implementação padrão dos métodos do protocolo
extension HelloProtocol {
    
    func getLanguage() -> String {
        return "English"
    }
    
    func helloWorld() {
        print("Hello World!")
    }
    
    func helloUniverse() {
        print("Hello Universe!")
    }
}

// HelloEnUS utiliza a implementacao padrao
struct HelloEnUS: HelloProtocol {
    
}

// HelloEnGB utiliza a implementacao padrao
struct HelloEnGB: HelloProtocol {
    
}

let enUS = HelloEnUS()
enUS.getLanguage()
enUS.helloWorld()
enUS.helloUniverse()

let enGB = HelloEnGB()
enGB.getLanguage()
enGB.helloWorld()
enGB.helloUniverse()

// HelloPtBR implementa suas versoes dos metodos
struct HelloPtBR: HelloProtocol {
    func getLanguage() -> String { return "Portugues" }
    
    func helloWorld() {
        print("Olá Mundo!")
    }
    
    func helloUniverse() {
        print("Olá Universo!")
    }
}

// HelloEsES implementa suas versoes dos metodos
struct HelloEsES: HelloProtocol {
    var getLanguage: String { return "Español" }
    
    func helloWorld() {
        print("Hola Mundo!")
    }
    
    func helloUniverse() {
        print("Hola Universo!")
    }
}

let ptBR = HelloPtBR()
ptBR.getLanguage()
ptBR.helloWorld()
ptBR.helloUniverse()

let EsES = HelloEsES()
EsES.getLanguage()
EsES.helloWorld()
EsES.helloUniverse()


// Array de objectos que assinam o HelloProtocol
let languages: [HelloProtocol] = [HelloEnUS(), HelloPtBR(), HelloEsES(), HelloEnGB()]

// Chama cada um dos medotos de cada objeto
languages.forEach { (language) in
    print(language.getLanguage)
    print(language.helloWorld())
    print(language.helloUniverse())
}
