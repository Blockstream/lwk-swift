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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/Blockstream/lwk-swift/releases/download/0.19.1/lwkFFI.xcframework.zip", checksum: "82fcc73e63eacc568ec77aa750089a9d1c4bb709dcd1d3af4eea2b1fbb9b49ba"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
