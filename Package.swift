// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MIDIWebView",
    platforms: [
        .iOS(.v9), .macOS(.v10_11)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "MIDIWebView",
            targets: ["MIDIWebView"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "ssh://git@bitbucket.innouk.music-group.com:2222/~peter.bloxidge/webmidikit.git", .branch("master")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "MIDIWebView",
            dependencies: ["WebMIDIKit"]),
        .testTarget(
            name: "MIDIWebViewTests",
            dependencies: ["MIDIWebView"]),
    ]
)
