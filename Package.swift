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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/Blockstream/lwk-swift/releases/download/0.20.0/lwkFFI.xcframework.zip", checksum: "5fd9d65bac0a3c5d2128172fa657e506f16c64f9ee9a400602478933fd3a48ca"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
