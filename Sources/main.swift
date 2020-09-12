#!/usr/bin/swift sh

import Foundation
import PromiseKit // @mxcl ~> 6.5

firstly {
    after(.seconds(2))
}.then {
    after(.milliseconds(500))
}.done {
    print("notice: two and a half seconds elaapsed")
    exit(0)
}

RunLoop.main.run()