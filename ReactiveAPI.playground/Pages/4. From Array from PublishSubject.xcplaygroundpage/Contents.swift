//: [Previous](@previous)

import Foundation
import RxSwift

let disposeBag = DisposeBag()

let integers = [10, 20, 30, 40, 50]

let subjectPublishing = PublishSubject<Int>()

subjectPublishing.subscribe {
    print($0)
}.disposed(by: disposeBag)

for elem in integers {
    subjectPublishing.onNext(elem)
}
subjectPublishing.onCompleted()

//: [Next: From Array from ReplaySubject](@next)
