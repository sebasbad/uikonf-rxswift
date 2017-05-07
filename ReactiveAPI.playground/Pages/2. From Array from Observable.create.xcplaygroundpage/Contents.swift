//: [Previous](@previous)

import Foundation
import RxSwift

let disposeBag = DisposeBag()

let integers = [10, 20, 30, 40, 50]

extension Observable {
    static func myFrom(array: Array<E>) -> Observable<E> {
        return Observable.empty()
    }
}

Observable.myFrom(array: integers).subscribe { event in
    print(event)
}.disposed(by: disposeBag)

//: [Next: URL request from Observable.create](@next)
