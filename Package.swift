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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/Blockstream/lwk-swift/releases/download/0.12.8/lwkFFI.xcframework.zip", checksum: "d1a2efa2f372b5a37c4778225b7a90e736faed3c282fce466aea02c934f7ac70"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
