// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXCoreUIPhotoLibrary",
	platforms: [.iOS("12.0"), .visionOS("1.0")],
	products: [
		.library(
			name: "GXCoreUIPhotoLibrary",
			targets: ["GXCoreUIPhotoLibraryWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "2.0.0-beta.17")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreUIPhotoLibrary-2.0.0-beta.17.xcframework.zip",
			checksum: "7b7f8087532cf3a9a2547b3740887a5b722af8d0b1bf9ae154d7adf345cbaebf"
		)
	]
)