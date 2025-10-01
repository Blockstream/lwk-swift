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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/Blockstream/lwk-swift/releases/download/0.12.0/lwkFFI.xcframework.zip", checksum: "f997682795fb4619afdfdc11e98b7b3b8a39592db8b9d56159daceaeb40e744a"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
