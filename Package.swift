// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXCoreUIPhotoLibrary",
	platforms: [.iOS("13.0"), .visionOS("1.0")],
	products: [
		.library(
			name: "GXCoreUIPhotoLibrary",
			targets: ["GXCoreUIPhotoLibraryWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "3.0.0-rc.2")
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
			url: "https://pkgs.genexus.dev/iOS/preview/GXCoreUIPhotoLibrary-3.0.0-rc.2.xcframework.zip",
			checksum: "9a369ff7c591c7ea3e8702c45ed910379c0e6334f3729fa1bddf9f11e38f2be3"
		)
	]
)