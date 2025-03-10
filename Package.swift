// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftUICalendar",
    platforms: [.iOS(.v14), .macOS(.v13)],
    //, .macOS(???)
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SwiftUICalendar",
            targets: ["SwiftUICalendar"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/MatthewMerritt/MxKShift.git", branch: "main")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SwiftUICalendar",
            dependencies: [
                .product(name: "MxKShift", package: "MxKShift"),
                ],
            path: "Sources/SwiftUICalendar/Classes"
        ),
        //.testTarget(
        //    name: "SwiftUICalendarTests",
        //    dependencies: ["SwiftUICalendar"]),
    ]
)
