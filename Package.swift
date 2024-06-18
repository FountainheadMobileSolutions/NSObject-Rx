// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "NSObject-Rx",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v9),
        .macOS(.v12)
    ],
    products: [
        .library(name: "NSObject-Rx", targets: ["NSObject-Rx"]),
    ],
    dependencies: [
        .package(url: "https://github.com/FountainheadMobileSolutions/RxSwift", branch: "main")
    ],
    targets: [
        .target(
            name: "NSObject-Rx",
            dependencies: ["RxSwift"],
            path: ".",
            sources: ["NSObject+Rx.swift", "HasDisposeBag.swift"]
        ),
    ]
)
