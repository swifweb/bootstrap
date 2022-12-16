// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "bootstrap",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "BootstrapUI", type: .static, targets: ["BootstrapUI", "BootstrapRaw", "BootstrapFoundation"])
    ],
    dependencies: [
        .package(url: "https://github.com/swifweb/web", from: "1.0.0-beta.1.17.0")
    ],
    targets: [
        .target(name: "BootstrapFoundation", dependencies: [
            .product(name: "Web", package: "web")
        ], resources: [
            .copy("css/bootstrap.min.css"),
            .copy("css/bootstrap.min.css.map"),
            .copy("css"),
            .copy("js/bootstrap.bundle.min.js"),
            .copy("js/bootstrap.bundle.min.js.map"),
            .copy("js")
        ]),
        .target(name: "BootstrapRaw", dependencies: [
            .target(name: "BootstrapFoundation"),
        ]),
        .target(name: "BootstrapUI", dependencies: [
            .target(name: "BootstrapFoundation"),
            .target(name: "BootstrapRaw"),
        ]),
        .testTarget(name: "BootstrapTests", dependencies: ["BootstrapUI"])
    ]
)
