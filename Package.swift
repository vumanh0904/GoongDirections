// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GoongDirections",
    platforms: [
        .macOS(.v10_12), .iOS(.v10), .watchOS(.v4), .tvOS(.v12)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "GoongDirections",
            targets: ["GoongDirections"]
        )
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/raphaelmor/Polyline.git", from: "4.2.1"),
        .package(url: "https://github.com/mapbox/turf-swift.git", from: "1.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "GoongDirections",
            dependencies: ["Polyline", "Turf"]),
        .testTarget(
            name: "GoongDirectionsTests",
            dependencies: ["GoongDirections"]),
    ]
)
