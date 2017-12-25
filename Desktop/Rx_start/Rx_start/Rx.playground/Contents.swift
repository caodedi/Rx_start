//: Playground - noun: a place where people can play

import UIKit

import RxCocoa
import RxSwift

var str = "Hello, playground"
let disposeBag = DisposeBag()
//var vali: Int?
//let number = Variable(1)
//number.asObservable()
//    .subscribe{
//        print($0)
//        vali = number.value
//     }
//.disposed(by: disposeBag)
////number.value = 0
//number.value = 8
//print(vali ?? 10)


//Observable.of(1, 2, 3)
//    .map{$0 * $0}
//    .subscribe(onNext:{
//        print($0)
//    })
//.disposed(by: disposeBag)

//struct Person {
//    var name: Variable<String>
//}

//let scott = Person(name: Variable("Scott"))
//let rr = Person(name: Variable("lori"))
//let peron = Variable(scott)
//peron.asObservable()
//    .debug("peron")
//    .flatMapLatest{
//        $0.name.asObservable()
//    }
//    .subscribe{
//        print($0)
//    }
//peron.value = rr
//scott.name.value = "erro0"


//let searchString = Variable("iOS")
//searchString.asObservable()
//    .map{$0.lowercased()}
//    .distinctUntilChanged()
//    .subscribe(onNext:{
//        print($0)
//    })
//    .disposed(by: disposeBag)
//searchString.value = "IOS"
//searchString.value = "io0"
//searchString.value = "ios"

