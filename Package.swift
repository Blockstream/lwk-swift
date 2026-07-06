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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/Blockstream/lwk-swift/releases/download/0.18.1-1/lwkFFI.xcframework.zip", checksum: "89b3b46eee133961654ecaea4ca32304e7b62a876366a6450b2fcd1cb99eb2ac"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
