// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "CardIO",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "CardIO",
            targets: ["CardIO"]
        ),
    ],
    targets: [
        .target(
            name: "CardIO",
            path: "CardIO",
            exclude: [
                "Samples",
                "Samples/*",
                "ThirdParty",
                "ThirdParty/*",
                "AudioTools/README.txt",
                "CMakeLists.txt"
            ],
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("."),
                .headerSearchPath("AudioTools"),
                .headerSearchPath("Models"),
                .headerSearchPath("Utility"),
                .headerSearchPath("card.io")
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
