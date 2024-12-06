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
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/211457749.zip",
            checksum: "0f97f855882bf64dca3331b963f30a43d04e5a3ca9b46bef3c175016ffb8c1f1"
        ),
        .target(
            name: "DequeModule_Aggregation",
            dependencies: [.target(name: "DequeModule"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "DequeModule",
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/211457753.zip",
            checksum: "0cb69571e49807768e19d03911b423e17aadec68a63e19db9de375f8fb65db86"
        ),
        .target(
            name: "HashTreeCollections_Aggregation",
            dependencies: [.target(name: "HashTreeCollections"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HashTreeCollections",
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/211457759.zip",
            checksum: "52b1cedb25a913efa6bb5aa3ebe60ed222ced016116a4d6a866ddc8a966e0da4"
        ),
        .target(
            name: "HeapModule_Aggregation",
            dependencies: [.target(name: "HeapModule"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HeapModule",
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/211457767.zip",
            checksum: "8ee3f881ff965266c1420b6c0a748d7bfd850a154265c2c47370d4a35e41556d"
        ),
        .target(
            name: "OrderedCollections_Aggregation",
            dependencies: [.target(name: "OrderedCollections"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "OrderedCollections",
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/211457770.zip",
            checksum: "2ecc821899fc2fb84792fc6dcc069369703ae17571c8494a09f5fdb78fbed708"
        ),
        .target(
            name: "_RopeModule_Aggregation",
            dependencies: [.target(name: "_RopeModule"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "_RopeModule",
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/211457775.zip",
            checksum: "2bbbeaf663f31f7769c42a965c35556f4a4c32f1b8bad8b8792f9a004098da68"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/211457778.zip",
            checksum: "c9a9f587863fedc631713ee30cb978ca591d78f222beeac5ea0816934a5dab30"
        ),
        .target(
            name: "InternalCollectionsUtilities_Aggregation",
            dependencies: [.target(name: "InternalCollectionsUtilities")]
        ),
        .binaryTarget(
            name: "InternalCollectionsUtilities",
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/211457781.zip",
            checksum: "06e26a581ee70d70ba0ed5563ef64ff5d5d79be2b53ccdb17657a30306ca7556"
        )
    ]
)