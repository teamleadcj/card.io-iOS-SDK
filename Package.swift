// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "CardIO",
    platforms: [
        .iOS(.v9) // или выше
    ],
    products: [
        .library(
            name: "CardIO",
            targets: ["CardIO"]
        )
    ],
    targets: [
        .target(
            name: "CardIO",
            path: "CardIO",
            // Исключаем только папки с демками и файлами сборки.
            // ThirdParty оставляем, так как там могут быть нужные зависимости.
            exclude: [
                "Samples",
                "Samples/*",
                "CMakeLists.txt",
                "AudioTools/README.txt"
            ],
            publicHeadersPath: ".",
            cSettings: [
                // Пути к заголовкам, в т.ч. подпапкам
                .headerSearchPath("."),
                .headerSearchPath("AudioTools"),
                .headerSearchPath("Models"),
                .headerSearchPath("Utility"),
                .headerSearchPath("card.io"),
                // Если нужны заголовки из ThirdParty, добавляем:
                .headerSearchPath("ThirdParty")
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
