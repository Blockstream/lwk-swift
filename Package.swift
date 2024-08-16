// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "lwk-bindings-swift",
    platforms: [
        .macOS(.v12),
        .iOS(.v11),
    ],
    products: [
        .library(name: "Lwk", targets: ["lwkFFI", "Lwk"]),
    ],
    targets: [
        .binaryTarget(name: "lwkFFI", url: "https://github.com/lvaccaro/lwk/releases/download/bindings_0.8.0/lwk.xcframework.zip", checksum: "ea3c391ac81512647170d2a53dcc62e5773a7e6160a4891e7b39ac05a1fd7cc7"),
        .target(name: "Lwk", dependencies: ["lwkFFI"]),
    ]
)