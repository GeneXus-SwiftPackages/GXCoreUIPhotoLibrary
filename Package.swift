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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "2.2.0-beta.26")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreUIPhotoLibrary-2.2.0-beta.26.xcframework.zip",
			checksum: "822c47442c22399f2ff663d077de86212b18ba058aa58b86d530cb7a92b63d56"
		)
	]
)