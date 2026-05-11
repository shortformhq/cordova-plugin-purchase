// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CordovaPluginPurchase",
    platforms: [.iOS(.v14)],
    products: [
        .library(name: "CordovaPluginPurchase", targets: ["InAppPurchase"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", "6.0.0"..<"10.0.0")
    ],
    targets: [f
        .target(
            name: "InAppPurchase",
            dependencies: [
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "src/ios",
            publicHeadersPath: ".",
            linkerSettings: [.linkedFramework("StoreKit")]
        )
    ]
)
