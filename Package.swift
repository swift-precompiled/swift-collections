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
            dependencies: [.target(name: "BitCollections"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "BitCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.1.2/BitCollections.xcframework.zip",
            checksum: "83ea789c3019f3f1fc6ee7815ac1462d25cbf7dfc0ab86938742bc457bd6453f"
        ),
        .target(
            name: "DequeModule_Aggregation",
            dependencies: [.target(name: "DequeModule"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "DequeModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.1.2/DequeModule.xcframework.zip",
            checksum: "f236e75faa9b987c8fc5c65a9189349f2640eb2e782b70a589d29920effd05d7"
        ),
        .target(
            name: "HashTreeCollections_Aggregation",
            dependencies: [.target(name: "HashTreeCollections"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HashTreeCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.1.2/HashTreeCollections.xcframework.zip",
            checksum: "7f606e21139cda5b2d82a6935eb9c9e1e7a3b32e57144020ae4259e396f7b56f"
        ),
        .target(
            name: "HeapModule_Aggregation",
            dependencies: [.target(name: "HeapModule"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HeapModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.1.2/HeapModule.xcframework.zip",
            checksum: "08fe0f196015978c8dca5e4e5c1cb27031c5811ce37c01ba271571cbe1a16580"
        ),
        .target(
            name: "OrderedCollections_Aggregation",
            dependencies: [.target(name: "OrderedCollections"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "OrderedCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.1.2/OrderedCollections.xcframework.zip",
            checksum: "d4c6e6e3079cb54fe58a5845946a12ef850b83b3989a05a47eb8bffb078bc08e"
        ),
        .target(
            name: "_RopeModule_Aggregation",
            dependencies: [.target(name: "_RopeModule"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "_RopeModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.1.2/_RopeModule.xcframework.zip",
            checksum: "820f2a9f87a4976897a69fe722580d2715e0df825fccba9e5f2c3ce52b723066"
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.1.2/Collections.xcframework.zip",
            checksum: "fc1be529fed6b08ecb91d7686936610bd72e23c1a8891a5873a523b8c5e3f3f0"
        ),
        .target(
            name: "InternalCollectionsUtilities_Aggregation",
            dependencies: [.target(name: "InternalCollectionsUtilities")]
        ),
        .binaryTarget(
            name: "InternalCollectionsUtilities",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.1.2/InternalCollectionsUtilities.xcframework.zip",
            checksum: "b5e6177256c65021386cd60221ec3ad252be958be71bcaead15e04ba51dbc121"
        )
    ]
)