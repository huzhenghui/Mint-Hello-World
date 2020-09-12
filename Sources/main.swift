#!/usr/bin/swift sh

import Foundation
import PromiseKit // @mxcl ~> 6.5

let formatter = DateFormatter.init()
formatter.dateFormat = "yyyy-MM-dd HH:mm:ss.SSS"

firstly {
    print("Firstly      : ", formatter.string(from: Date()))
    return after(.seconds(1))
}.then {
    print("Then (1s)    : ", formatter.string(from: Date()))
    return after(.milliseconds(500))
}.done {
    print("Done (500ms) : ", formatter.string(from: Date()))
    exit(0)
}

RunLoop.main.run()
