import PackageDescription

let package = Package(
        name: "CardIO",
        products: [
                .library(
                        name: "CardIO",
                        targets: ["CardIO"]),
        ],
        dependencies: [
        ],
        targets: [
                .binaryTarget(name: "CardIO", path: "./Sources/CardIO.xcframework")
        ]
)
