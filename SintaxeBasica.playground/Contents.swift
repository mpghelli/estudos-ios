import UIKit

//var str = "Hello, playground"

/*let constA = 42
print(constA)

let constB: Float = 3.14
print(constB)*/

//let _const = "Hello, Swift 5"
//print (_const)

//let constA = "Maguila"
//let constB = 8790.00

//print("Valor do peso de \(constA) é maior que \(constB)")

//var arrayInts = [Int]()
//arrayInts.append(980)
//arrayInts.append(330)
//arrayInts += [765]
//var umaVar = arrayInts[0]
//print("O valor do primeiro elemento é \(umaVar)")
//
//print ("O valor do primeiro elemento \(arrayInts[1])")
//
//print ("O valor do primeiro elemento" + String(arrayInts[2]))

//var someStrs = [String]()
//someStrs.append("Apple")
//someStrs.append("Amazon")
//someStrs += ["Google"]
//
//    for item in someStrs {
//        print(item)
//    }
//
//print(someStrs.count)


//var arrayInt1 = [Int](repeating:2, count:2)
//var arrayInt2 = [Int](repeating:1, count:3)
//var arrayInt3 = arrayInt1 + arrayInt2
//
//print("Total de elementos em arrayInt = \(arrayInt1.count)")
//
//print("Total de elementos em arrayInt2 = \(arrayInt2.count)");
//
//print ("Total de elementos em arrayInt3 = \(arrayInt3.count)")



//var arrayInt1 = [Int](repeating:2, count:2)
//var arrayInt2 = [Int](repeating:1, count:3)
//var arrayInt3 = arrayInt1 + arrayInt2
//
//print("arrayInt  está Empty = \(arrayInt1.isEmpty)")
//
//print("arrayInt2  está Empty = \(arrayInt2.isEmpty)");
//
//print ("arrayInt3  está Empty = \(arrayInt3.isEmpty)")

//var myArray = ["'Swift", "Objective-C", "Python"]
//for (index, element) in myArray.enumerated()
//{
//    print("O Elemento \(element) está no index \(index)")
//}
//
//
//var progArray = ["'Swift", "Objective-C", "Python"]
//for arrayElement in progArray
//{
//    print(arrayElement)
//}
//
//
//var novoArray = [1,2,3,4,5]
//print (novoArray)
//novoArray.remove(at: 1)
//print(novoArray)

//enum names {
//    case Swift
//    case Closures
//}
//
//var lang = names.Closures
////lang = .Closures
//
//switch lang {
//
//    case.Swift: print("Bem vindo Swift")
//    case.Closures: print("'Diga um olá para as Closures")
//    default:print("Introdução")
//}

enum Clima {
    case India
    case America
    case Africa
    case Australia
}

var estacao = Clima.America
estacao = .America

switch estacao {
    case .India: print ("Clima quente")
    case .America: print("Clima frio")
    case .Africa: print ("Clima moderado")
    case .Australia: print ("Clima seco")

}

