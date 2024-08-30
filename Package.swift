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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/Blockstream/lwk-swift/releases/download/test/lwkFFI.xcframework.zip", checksum: "95e7f72d7b11f820b720571e561e0c81b0ed791ce290cef4900de8de48b50401"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
