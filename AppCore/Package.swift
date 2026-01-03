// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AppCore",
    platforms: [.iOS(.v15),.macOS(.v12)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MissionsUseCases",
            targets: ["MissionsUseCases"]),
        .library(
            name: "MissionsRepository",
            targets: ["MissionsRepository"]),
        .library(
            name: "NetworkManager",
            targets: ["NetworkManager"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "MissionsUseCases",
            dependencies: ["MissionsRepository"]),
        .testTarget(
            name: "MissionsUseCasesTests",
            dependencies: ["MissionsUseCases", "MissionsRepository"]
        ),
        .target(
            name: "MissionsRepository",
            dependencies: ["NetworkManager"]),
        .testTarget(
            name: "MissionsRepositoryTests",
            dependencies: ["MissionsRepository", "NetworkManager"]
        ),
        .target(
            name: "NetworkManager"),
        .testTarget(
            name: "NetworkManagerTests",
            dependencies: ["NetworkManager"]
        ),
    ]
)
