// swift-tools-version:6.2.0

import PackageDescription
import Foundation

let package = Package(
    name: "swift-collections",
    products: [
        .library(
            name: "BasicContainers",
            targets: ["BasicContainers_Aggregation"]
        ),
        .library(
            name: "BitCollections",
            targets: ["BitCollections_Aggregation"]
        ),
        .library(
            name: "ContainersPreview",
            targets: ["ContainersPreview_Aggregation"]
        ),
        .library(
            name: "DequeModule",
            targets: ["DequeModule_Aggregation"]
        ),
        .library(
            name: "HashTreeCollections",
            targets: ["HashTreeCollections_Aggregation"]
        ),
        .library(
            name: "HeapModule",
            targets: ["HeapModule_Aggregation"]
        ),
        .library(
            name: "OrderedCollections",
            targets: ["OrderedCollections_Aggregation"]
        ),
        .library(
            name: "_RopeModule",
            targets: ["_RopeModule_Aggregation"]
        ),
        .library(
            name: "TrailingElementsModule",
            targets: ["TrailingElementsModule_Aggregation"]
        ),
        .library(
            name: "Collections",
            targets: ["Collections_Aggregation"]
        )
    ],
    targets: [
        .target(
            name: "InternalCollectionsUtilities_Aggregation",
            dependencies: [.target(name: "InternalCollectionsUtilities")]
        ),
        .binaryTarget(
            name: "InternalCollectionsUtilities",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.3.0/InternalCollectionsUtilities.xcframework.zip",
            checksum: "a3d30b31987a82abbf6a2fe781212f065834a51e7f0cc820e2d7ef6e78daa9e0"
        ),
        .target(
            name: "BasicContainers_Aggregation",
            dependencies: [
                .target(name: "BasicContainers"),
                "InternalCollectionsUtilities_Aggregation",
                "ContainersPreview_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "BasicContainers",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.3.0/BasicContainers.xcframework.zip",
            checksum: "d5f1d5376133a0279936956b388009037df9a755790b40c1612d90b5be285315"
        ),
        .target(
            name: "BitCollections_Aggregation",
            dependencies: [.target(name: "BitCollections"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "BitCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.3.0/BitCollections.xcframework.zip",
            checksum: "9aa9ef8ee39a2db4d96406b3fd72895839d84e437e8511f7809e11fe80564d1c"
        ),
        .target(
            name: "ContainersPreview_Aggregation",
            dependencies: [.target(name: "ContainersPreview"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "ContainersPreview",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.3.0/ContainersPreview.xcframework.zip",
            checksum: "c8bac25e4e5a27ce3ce89af2042ff21567d3b69b9c79f686a5ca144b33abcd0b"
        ),
        .target(
            name: "DequeModule_Aggregation",
            dependencies: [.target(name: "DequeModule"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "DequeModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.3.0/DequeModule.xcframework.zip",
            checksum: "fe528a95f4a576750ef688456165037c8cffdb72c80f818f8d17f5cde5adb78a"
        ),
        .target(
            name: "HashTreeCollections_Aggregation",
            dependencies: [.target(name: "HashTreeCollections"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HashTreeCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.3.0/HashTreeCollections.xcframework.zip",
            checksum: "cf1b0a79bdad460aca8ad969ed942ca791790c5d09b857daa145fe87edc1d6da"
        ),
        .target(
            name: "HeapModule_Aggregation",
            dependencies: [.target(name: "HeapModule"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HeapModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.3.0/HeapModule.xcframework.zip",
            checksum: "dab55cebd88b613f1ca089b3d495c3af874112144682feb4f181c321f8893d24"
        ),
        .target(
            name: "OrderedCollections_Aggregation",
            dependencies: [.target(name: "OrderedCollections"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "OrderedCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.3.0/OrderedCollections.xcframework.zip",
            checksum: "e81e07d792f1e329f636b5d01d70d261843d1bfb90150a4b62e801c0d7c45b84"
        ),
        .target(
            name: "_RopeModule_Aggregation",
            dependencies: [.target(name: "_RopeModule"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "_RopeModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.3.0/_RopeModule.xcframework.zip",
            checksum: "533828f87c83bd2c50803421c5c25fd1208e3db794041ef32097bea864e24426"
        ),
        .target(
            name: "TrailingElementsModule_Aggregation",
            dependencies: [.target(name: "TrailingElementsModule")]
        ),
        .binaryTarget(
            name: "TrailingElementsModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.3.0/TrailingElementsModule.xcframework.zip",
            checksum: "160ff7394dacd50fc411803018be60f365c5ae1e8a5b7680b594d313a0932dc7"
        ),
        .target(
            name: "Collections_Aggregation",
            dependencies: [
                .target(name: "Collections"),
                "BitCollections_Aggregation",
                "DequeModule_Aggregation",
                "HashTreeCollections_Aggregation",
                "HeapModule_Aggregation",
                "OrderedCollections_Aggregation",
                "_RopeModule_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "Collections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.3.0/Collections.xcframework.zip",
            checksum: "aecdccb18dc71ff4119f24aa2d2ed0543a6e9fdabc82f885a4637839c1f26ef4"
        )
    ]
)