import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

for i in 0...10 {
    Thread.detachNewThread {
        print(i)
    }
}

class ObjectThread {
    func threadTest() {
        let thread = Thread(target: self, selector: #selector(threadWorker), object: nil)
        thread.start()
    }

    @objc func threadWorker() {
        print("threadWorker")
    }
}

let obj = ObjectThread()
obj.threadTest()
