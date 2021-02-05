import UIKit
import Foundation

//enum Aluno {
//    case Materia (String)
//    case Nota (Int, Int, Int)
//}
//
//var detalheAluno = Aluno.Materia("Swift 5")
//var alunoNotas = Aluno.Nota(10,9,8)
////var alunoNotas = Aluno.Materia("Swift 5")
//
//
//switch alunoNotas {
//case .Materia(let detalheAluno):
//  print("O nome do aluno é: \(detalheAluno).")
//case .Nota(let Nota1, let Nota2, let Nota3):
//    print(" As notas do estudante para essa matéria são: \(Nota1), \(Nota2), \(Nota3)")
//}
//
//
//enum Meses: Int {
//    case Janeiro = 1, Fevereiro, Março, Abril, Maio, Junho, Julho, Agosto, Setembro, Outubro, Novembro, Dezembro
//
//}
//
//let mesAno = Meses.Julho.rawValue
//print("O valor do mês é: \(mesAno)")

//var umaString: String? = nil
//
//if(umaString != nil)
//{
//    print(umaString)
//}
//else
//{
//    print("umaString possui um valor nil")
//}

//var umaString: String? = nil
//umaString = "Ola, Swift 5"
//if(umaString != nil)
//{
//    print(umaString!)
//}
//else
//{
//    print("umaString possui um valor nil")
//}

//var umaString: String? = nil
//umaString = "Ola, Swift 5"
//if let outraString = umaString
//{
//    print("A outraString possui o seguinte valor - \(outraString)")
//}
//else
//{
//    print("A string não possui valor nenhum")
//}
//
//let simpleClosure = {
//    print("úma simples Closure")
//}
//
//simpleClosure()
//
//
//let nomeFull = {
//    (firstName:String, lastName:String) -> String in
//return firstName + " " + lastName
//}
//
//let nomeCompleto = nomeFull("James", "Bond")
//    print("Meu nome completo é \(nomeCompleto)")


//var cidades = ["São Paulo", "Rio de Janeiro", "Belo Horizonte"]
//
//var Distancia = [34568,1112,64567]
//
//let distancCidadeDict = Dictionary(uniqueKeysWithValues: zip(cidades, Distancia))
//
//var cidadesProx = distancCidadeDict.filter { $0.value < 34568}
//
//print(cidadesProx)


//var cidades = ["São Paulo", "Rio de Janeiro", "Belo Horizonte", "Salvador", "Recife", "Buri"]
//
//var agruparCidades = Dictionary(grouping: cidades){ $0.first! }

//print (agruparCidades)

//func umNovoMundo() {
//    print("Ola novo Mundo que me espera")
//}
//
//umNovoMundo()
//
//func imprimirAlgo(nome:String = "Presley"){
//    print ("Ólá \(nome)")
//}
//
//imprimirAlgo(nome: "Elvis")
//imprimirAlgo()
//
//func imprimirCoisas( nomes: String...)
//{
//    for nome in nomes {
//        print(nome)
//    }
//    print (type(of: nomes))
//
//}

//imprimirCoisas(nomes: "Elvis","Presley")

//class Pessoa {
//    var idade = 25
//
//    init(){
//      print("Uma nova instancia da class Pessoa é criada")
//    }
//
//}
//
//let objPessoa = Pessoa()
//
//print("A idade dessa pessoa é \(objPessoa.idade)")


class ExecutorSingleton{
    static let instanciaCompartilhada = ExecutorSingleton()
    
    init() {
        print("ExecutorSingleton foi inicializado")        
    }
    
    func processoOperao(){
        print("Iniciando a função processoOperacao")
    }
}

ExecutorSingleton.instanciaCompartilhada.processoOperao()

//let instancia = ExecutorSingleton()
//instancia.processoOperao()
