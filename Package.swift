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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/Blockstream/lwk-swift/releases/download/0.12.7/lwkFFI.xcframework.zip", checksum: "344796f49999a1eadab5e7786fcb42c60f2fad66b351391d83cb66b2783488d2"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
