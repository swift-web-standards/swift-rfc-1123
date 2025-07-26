// swift-tools-version:6.0

import Foundation
import PackageDescription

extension String {
    static let rfc1123: Self = "RFC_1123"
}

extension Target.Dependency {
    static var rfc1123: Self { .target(name: .rfc1123) }
}

let package = Package(
    name: "swift-rfc-1123",
    platforms: [
        .macOS(.v13),
        .iOS(.v16)
    ],
    products: [
        .library(name: .rfc1123, targets: [.rfc1123]),
    ],
    dependencies: [
        // Add RFC dependencies here as needed
        // .package(url: "https://github.com/swift-web-standards/swift-rfc-1123.git", branch: "main"),
    ],
    targets: [
        .target(
            name: .rfc1123,
            dependencies: [
                // Add target dependencies here
            ]
        ),
        .testTarget(
            name: .rfc1123.tests,
            dependencies: [
                .rfc1123
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)

extension String { var tests: Self { self + " Tests" } }