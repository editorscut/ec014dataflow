// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "SwiftUIViewPrettyPrint",
  products: [
    .library(
      name: "SwiftUIViewPrettyPrint",
      targets: ["SwiftUIViewPrettyPrint"]),
  ],
  targets: [
    .target(
      name: "SwiftUIViewPrettyPrint"),
    .testTarget(
      name: "SwiftUIViewPrettyPrintTests",
      dependencies: ["SwiftUIViewPrettyPrint"]),
  ]
)
