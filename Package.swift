// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RxModal",
    products: [
        .library(name: "RxModal", targets: ["RxModal"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.1.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "RxModal",
            dependencies: ["RxSwift", "RxCocoa"],
            path: "Sources"
        ),
        .testTarget(
            name: "RxModalTests",
            dependencies: ["RxModal"]
        ),
    ]
)
