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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/Blockstream/lwk-swift/releases/download/0.8.2-1/lwkFFI.xcframework.zip", checksum: "9d2d08c4f4d61b98848bc467ab01cbbade33c8cfe72fde508d8c85872246e2f2"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
