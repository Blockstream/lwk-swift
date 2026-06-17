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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/Blockstream/lwk-swift/releases/download/0.18.0/lwkFFI.xcframework.zip", checksum: "cb6681d132e77ffe811570c58fd2daf2c6aa708d9b0d498507a2c7fc2f3b57e7"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
