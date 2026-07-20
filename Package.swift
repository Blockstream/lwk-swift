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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/Blockstream/lwk-swift/releases/download/0.18.2-1/lwkFFI.xcframework.zip", checksum: "c52fbe5b4322cdf70bf7e1b03838435852a5ba844afc749f9478ea81bec03e63"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
