// swift-tools-version:5.7.0

import PackageDescription
import Foundation

let package = Package(
    name: "swift-collections",
    products: [
        .library(
            name: "BitCollections",
            targets: ["BitCollections_Aggregation"]
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.1.6/InternalCollectionsUtilities.xcframework.zip",
            checksum: "bd930b76f351bdc6160b5a4822addb716652c6323da7b3acad5f2d656cf67280"
        ),
        .target(
            name: "BitCollections_Aggregation",
            dependencies: [.target(name: "BitCollections"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "BitCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.1.6/BitCollections.xcframework.zip",
            checksum: "3266732805264b7f68e2256208381da9d764cc1cddc31aa9ddc7f988939fd1f8"
        ),
        .target(
            name: "DequeModule_Aggregation",
            dependencies: [.target(name: "DequeModule"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "DequeModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.1.6/DequeModule.xcframework.zip",
            checksum: "ea53af324b3a0ed2733a203d505ae5c42bd3fd49866de863d7f479b402a09496"
        ),
        .target(
            name: "HashTreeCollections_Aggregation",
            dependencies: [.target(name: "HashTreeCollections"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HashTreeCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.1.6/HashTreeCollections.xcframework.zip",
            checksum: "8332f3bc350d05989cca98f8ad1789bbd7a6b707c8b4a7a236cf208daf6081b5"
        ),
        .target(
            name: "HeapModule_Aggregation",
            dependencies: [.target(name: "HeapModule"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HeapModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.1.6/HeapModule.xcframework.zip",
            checksum: "f94f8e5d7abdfab61ef8d3424ac4b1fca252b7bf4b94cf1122b209c6fdccd5fc"
        ),
        .target(
            name: "OrderedCollections_Aggregation",
            dependencies: [.target(name: "OrderedCollections"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "OrderedCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.1.6/OrderedCollections.xcframework.zip",
            checksum: "10b59a58a4c96ddd45d01b9f2588c0490dfadb01f6270c18e24664c38724b54c"
        ),
        .target(
            name: "_RopeModule_Aggregation",
            dependencies: [.target(name: "_RopeModule"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "_RopeModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.1.6/_RopeModule.xcframework.zip",
            checksum: "a43c4b6de776aaa1eb14e1af26544815f080a1ea0135097cc4dc0ddca74b1792"
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.1.6/Collections.xcframework.zip",
            checksum: "a353099a3ef61bdbd579ad0a8596db66f782b2bf3d147520c777db8834de74cb"
        )
    ]
)