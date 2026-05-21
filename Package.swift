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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/Blockstream/lwk-swift/releases/download/0.17.2/lwkFFI.xcframework.zip", checksum: "9b34d7a0f3481e0443be5a3413411204afe7c77f9603f00e529a0d1ff4eb7aff"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
