// swift-tools-version:5.7

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
            name: "BitCollections_Aggregation",
            dependencies: [.target(name: "BitCollections"), "_CollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "BitCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.1.0/BitCollections.xcframework.zip",
            checksum: "f9923386fe9ed8e2fbf9f3eaa4c323bac019893ed29cc03914aed2d6789ed339"
        ),
        .target(
            name: "DequeModule_Aggregation",
            dependencies: [.target(name: "DequeModule"), "_CollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "DequeModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.1.0/DequeModule.xcframework.zip",
            checksum: "a26834877871731835abfb5b63493cdf5dc67f9b14811839784da8c41d2efe3b"
        ),
        .target(
            name: "HashTreeCollections_Aggregation",
            dependencies: [.target(name: "HashTreeCollections"), "_CollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HashTreeCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.1.0/HashTreeCollections.xcframework.zip",
            checksum: "72d9ba92041b64b96cb5ef11021933904da2ba755c0c0ba8b13c7da29981e391"
        ),
        .target(
            name: "HeapModule_Aggregation",
            dependencies: [.target(name: "HeapModule"), "_CollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HeapModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.1.0/HeapModule.xcframework.zip",
            checksum: "aa265a8d27273be31529a6b3e5edd457dd342d3a50caf48a371efb3b1726570e"
        ),
        .target(
            name: "OrderedCollections_Aggregation",
            dependencies: [.target(name: "OrderedCollections"), "_CollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "OrderedCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.1.0/OrderedCollections.xcframework.zip",
            checksum: "7c729dda0f859afc3daa8e754204a8541e051d9e3f32184174a3677deb88eb2f"
        ),
        .target(
            name: "_RopeModule_Aggregation",
            dependencies: [.target(name: "_RopeModule"), "_CollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "_RopeModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.1.0/_RopeModule.xcframework.zip",
            checksum: "4f143d7ac30e25e364250c96faa3dfe1fc8c89ac9fcade59f8597e4e792ed730"
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.1.0/Collections.xcframework.zip",
            checksum: "3f3c0f82708b532ecab8ae41863a1c1b21f8a7b7fdd678b5f418874ef6b596f0"
        ),
        .target(
            name: "_CollectionsUtilities_Aggregation",
            dependencies: [.target(name: "_CollectionsUtilities")]
        ),
        .binaryTarget(
            name: "_CollectionsUtilities",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.1.0/_CollectionsUtilities.xcframework.zip",
            checksum: "e60504ebfc7ef020c0f2b9294ce0aeb0e93d1835a64f838435c5ed3de62406df"
        )
    ]
)