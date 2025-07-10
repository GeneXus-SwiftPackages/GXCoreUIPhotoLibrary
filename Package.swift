// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXCoreUIPhotoLibrary",
	platforms: [.iOS("15.0"), .visionOS("2.0")],
	products: [
		.library(
			name: "GXCoreUIPhotoLibrary",
			targets: ["GXCoreUIPhotoLibraryWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "3.2.0-beta.23")
	],
	targets: [
		.target(name: "GXCoreUIPhotoLibraryWrapper",
				dependencies: [
					"GXCoreUIPhotoLibrary",
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.iOS, .visionOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreUIPhotoLibrary",
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreUIPhotoLibrary-3.2.0-beta.23.xcframework.zip",
			checksum: "7b21b660113854ff0b8d407bd4f592f1becd18620070f88adbe76c848b41e7f5"
		)
	]
)