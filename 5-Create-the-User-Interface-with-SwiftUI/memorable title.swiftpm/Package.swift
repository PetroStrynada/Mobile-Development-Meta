// swift-tools-version: 5.6

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "Memorable_Title",
    platforms: [
        .iOS("15.2")
    ],
    products: [
        .iOSApplication(
            name: "Memorable_Title",
            targets: ["AppModule"],
            bundleIdentifier: "littlelemon.memorable-title",
            teamIdentifier: "76Y8THNQ6B",
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .leaf),
            accentColor: .presetColor(.teal),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ]
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            path: "."
        )
    ]
)