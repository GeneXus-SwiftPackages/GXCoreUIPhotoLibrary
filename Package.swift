// swift-tools-version: 5.7
import PackageDescription

let package = Package(
	name: "GXCoreUIPhotoLibrary",
	platforms: [.iOS("12.0")],
	products: [
		.library(
			name: "GXCoreUIPhotoLibrary",
			targets: ["GXCoreUIPhotoLibraryWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "1.1.0-beta.7")
	],
	targets: [
		.target(name: "GXCoreUIPhotoLibraryWrapper",
				dependencies: [
					"GXCoreUIPhotoLibrary",
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.iOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreUIPhotoLibrary",
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreUIPhotoLibrary-1.1.0-beta.7.xcframework.zip",
			checksum: "9a2c087798f441e148b1b9202ea463e9aa445f117609f1298f4d79b539735bd7"
		)
	]
)