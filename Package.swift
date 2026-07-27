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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/Blockstream/lwk-swift/releases/download/0.18.3/lwkFFI.xcframework.zip", checksum: "e4a9c967bec046084ab2122ac75b70e4c3adb87151db073803f6560abd867f94"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
