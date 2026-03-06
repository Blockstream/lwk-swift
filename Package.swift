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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/blockstream/lwk-swift/releases/download/0.15.0-1/lwkFFI.xcframework.zip", checksum: "fa7f220fcba7aa28d1c40fa1a51dad3729623d54d6ef1d819264ab9454f86370"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
