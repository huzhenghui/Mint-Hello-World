// swift-tools-version:4.2
import PackageDescription

let package = Package(name: "Swift-Sh-Script-Eject")

package.products = [
    .executable(name: "Swift-Sh-Script-Eject", targets: ["Swift-Sh-Script-Eject"])
]
package.dependencies = [
    .package(url: "https://github.com/mxcl/PromiseKit.git", .upToNextMajor(from: "6.5.0"))
]
package.targets = [
    .target(name: "Swift-Sh-Script-Eject", dependencies: [.product(name: "PromiseKit", package: "PromiseKit")], path: "Sources")
]
