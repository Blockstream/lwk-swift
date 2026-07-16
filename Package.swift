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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/Blockstream/lwk-swift/releases/download/0.18.2/lwkFFI.xcframework.zip", checksum: "c91d856edc668da3cf3ca6e48e3adcb71046763e94f85c2c1931a985b74d0b7e"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
