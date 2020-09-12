// swift-tools-version:4.2
import PackageDescription

let package = Package(name: "Mint-Hello-World")

package.products = [
    .executable(name: "Mint-Hello-World", targets: ["Mint-Hello-World"])
]
package.dependencies = [
    .package(url: "https://github.com/mxcl/PromiseKit.git", .upToNextMajor(from: "6.5.0"))
]
package.targets = [
    .target(name: "Mint-Hello-World", dependencies: [.product(name: "PromiseKit", package: "PromiseKit")], path: "Sources")
]
