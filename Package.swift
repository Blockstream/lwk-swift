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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/Blockstream/lwk-swift/releases/download/0.16.0/lwkFFI.xcframework.zip", checksum: "5dffeb272fe108443521ec1a1c5517c6bbd53fe9141dd1751247f67d352a37fb"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
