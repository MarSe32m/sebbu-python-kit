// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "sebbu-python-kit",
    products: [
        .library(
            name: "SebbuPythonKit",
            targets: ["SebbuPythonKit"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/pvieito/pythonkit", from: "0.5.1"),
        .package(url: "https://github.com/apple/swift-numerics", from: "1.1.1")
    ],
    targets: [
        .target(
            name: "SebbuPythonKit",
            dependencies: [
                .product(name: "PythonKit", package: "PythonKit"),
                .product(name: "Numerics", package: "swift-numerics")
            ],
            swiftSettings: [
                .enableUpcomingFeature("ApproachableConcurrency"),
            ],
        ),
        .testTarget(
            name: "SebbuPythonKitTests",
            dependencies: ["SebbuPythonKit"],
            swiftSettings: [
                .enableUpcomingFeature("ApproachableConcurrency"),
            ],
        ),
    ]
)
