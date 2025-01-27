// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "CardIOFork",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        // library (для статической/динамической линковки)
        .library(
            name: "CardIOFork",
            targets: ["CardIOFork"]
        )
    ],
    targets: [
        // Основной таргет, где лежит исходный код библиотеки
        .target(
            name: "CardIOFork",
            path: "CardIO",
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("path/to/headers") 
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
