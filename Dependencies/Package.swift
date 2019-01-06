// swift-tools-version:4.0

/*
 IMPORTANT: Whenever you add a new target that you need available in the app you must as
            well go HelloApp xcode project and add the target to "Embedded Binaries"
            after you have runned `make install_deps`!
 */

import PackageDescription

let package = Package(
    name: "Dependencies",
    products: [
        .library(name: "Dependencies", type: .dynamic, targets: ["Dependencies"]),
    ],
    dependencies: [
        .package(url: "https://github.com/alex-ross/HelloKit.git", from: "0.1.0"),
    ],
    targets: [
        .target(name: "Dependencies", dependencies: ["HelloKit"], path: "." )
    ]
)
