// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "lwk_bindings",
    platforms: [
        .macOS(.v12),
        .iOS(.v13),
    ],
    products: [
        .library(name: "LiquidWalletKit", targets: ["lwkFFI", "LiquidWalletKit"]),
    ],
    targets: [
        .binaryTarget(name: "lwkFFI", url: "https://github.com/Blockstream/lwk-swift/releases/download/0.9.1/lwkFFI.xcframework.zip", checksum: "b2f0611a0e61ef7e078db67bbb9dfb13337255e2e7a61e3f273951ba937c7e16"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
