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
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/211458753.zip",
            checksum: "795f4a07551f91c0a6b3fc0003aa8ff5d6aa2d5913234b823845714572e90e94"
        ),
        .target(
            name: "DequeModule_Aggregation",
            dependencies: [.target(name: "DequeModule"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "DequeModule",
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/211458757.zip",
            checksum: "af9999c9c9dca3114db3dc1a184694a63949bcaeef1371af2f71bcabdd3bf4f6"
        ),
        .target(
            name: "HashTreeCollections_Aggregation",
            dependencies: [.target(name: "HashTreeCollections"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HashTreeCollections",
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/211458767.zip",
            checksum: "e0120dbe0c8762e6e2a0b57b8709cf352be7dc5600eea716e7d98ee0a1bcdfc9"
        ),
        .target(
            name: "HeapModule_Aggregation",
            dependencies: [.target(name: "HeapModule"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HeapModule",
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/211458775.zip",
            checksum: "10275ec70aba67dd07f96af6ccc9441e92c1c8ca1689783df798ec72cd92ab69"
        ),
        .target(
            name: "OrderedCollections_Aggregation",
            dependencies: [.target(name: "OrderedCollections"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "OrderedCollections",
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/211458781.zip",
            checksum: "b5f19b122602ac369fe829ce5d6f1b771bb884417995e5307f3038154d954897"
        ),
        .target(
            name: "_RopeModule_Aggregation",
            dependencies: [.target(name: "_RopeModule"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "_RopeModule",
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/211458786.zip",
            checksum: "26076701c4ba389ff3111cfa6efb358c73c1c115db573c81a2b7136524317063"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/211458792.zip",
            checksum: "cdb0b68ab8c63e08721632931b8a537608b76185581ee235bd8b71e4c2d40a2a"
        ),
        .target(
            name: "InternalCollectionsUtilities_Aggregation",
            dependencies: [.target(name: "InternalCollectionsUtilities")]
        ),
        .binaryTarget(
            name: "InternalCollectionsUtilities",
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/211458797.zip",
            checksum: "e2006ed05fd7d58e4dc92c48c643dca94e7f016599e1b3b5a86341abc513708e"
        )
    ]
)