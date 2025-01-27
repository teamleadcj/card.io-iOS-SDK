// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "CardIO",
    platforms: [
        .iOS(.v11) // Минимальная версия iOS 11
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
                "Samples", // Исключаем папку с примерами
                "ThirdParty", // Исключаем папку с зависимостями
                "AudioTools/README.txt", // Исключаем ненужные файлы
                "CMakeLists.txt" // Исключаем файлы сборки CMake
            ],
            sources: [
                "AudioTools",
                "Models",
                "Utility",
                "card.io"
            ],
            publicHeadersPath: "include", // Указываем путь к публичным заголовкам
            cSettings: [
                .headerSearchPath("."), // Добавляем пути для поиска заголовков
                .headerSearchPath("AudioTools"),
                .headerSearchPath("Models"),
                .headerSearchPath("Utility"),
                .headerSearchPath("card.io")
            ],
            linkerSettings: [
                .linkedFramework("AVFoundation"), // Добавляем необходимые фреймворки
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("MobileCoreServices"),
                .linkedFramework("OpenGLES"),
                .linkedFramework("UIKit"),
                .linkedFramework("Foundation"),
                .linkedFramework("CoreGraphics")
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
