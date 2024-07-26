// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "NSObject-Rx",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v12),
        .macOS(.v12)
    ],
    products: [
        .library(name: "NSObject-Rx", targets: ["NSObject-Rx"]),
    ],
    dependencies: [
        .package(url: "https://github.com/FountainheadMobileSolutions/RxSwift", .upToNextMajor(from: "6.8.0")),
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
