// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "animate",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "Animate", type: .static, targets: ["Animate"])
    ],
    dependencies: [
        .package(url: "https://github.com/swifweb/web", from: "1.0.0-beta.2.0.0")
    ],
    targets: [
        .target(name: "Animate", dependencies: [
            .product(name: "Web", package: "web")
        ], resources: [
            .copy("css/animate.min.css"),
            .copy("css"),
        ]),
        .testTarget(name: "AnimateTests", dependencies: ["Animate"])
    ]
)
