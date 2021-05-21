// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "Homepage",
    platforms: [.macOS(.v11)],
    products: [
        .executable(name: "Homepage", targets: ["Homepage"])
    ],
    dependencies: [
        .package(name: "Tokamak", url: "https://github.com/TokamakUI/Tokamak", from: "0.6.1")
    ],
    targets: [
        .target(
            name: "Homepage",
            dependencies: [
                .product(name: "TokamakShim", package: "Tokamak")
            ],
            resources: [
                .process("Resources")
            ]
        ),
        .testTarget(
            name: "HomepageTests",
            dependencies: ["Homepage"]),
    ]
)
