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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/Blockstream/lwk-swift/releases/download/0.17.0-1/lwkFFI.xcframework.zip", checksum: "236e96119ec1662eec0181c5b271be95b2ce76e675476a28bb0c1a32a7c9b214"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
