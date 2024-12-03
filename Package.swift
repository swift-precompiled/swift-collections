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
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/210680628.zip",
            checksum: "1d94c6bb337d3c78ed817635eb7c2d3f1d8ec2966b7ae254e22907be1896a402"
        ),
        .target(
            name: "DequeModule_Aggregation",
            dependencies: [.target(name: "DequeModule"), "_CollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "DequeModule",
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/210680629.zip",
            checksum: "e2053d3274f16c756e02d76864e0866fab43d00471dad0c74c797434ac7b06ca"
        ),
        .target(
            name: "HashTreeCollections_Aggregation",
            dependencies: [.target(name: "HashTreeCollections"), "_CollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HashTreeCollections",
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/210680633.zip",
            checksum: "1af388732698dd47e55baab5485c954e4310e851e716e05546c1d2ec90efc07d"
        ),
        .target(
            name: "HeapModule_Aggregation",
            dependencies: [.target(name: "HeapModule"), "_CollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HeapModule",
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/210680639.zip",
            checksum: "f6d41198041a6e12b323abc204e1ebb6e99fecd639fdb2518532143c4a9f31b7"
        ),
        .target(
            name: "OrderedCollections_Aggregation",
            dependencies: [.target(name: "OrderedCollections"), "_CollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "OrderedCollections",
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/210680646.zip",
            checksum: "b672bab50252b1a436a504e1081f81da1c4d5e4832869cc37a68fac03fd75af6"
        ),
        .target(
            name: "_RopeModule_Aggregation",
            dependencies: [.target(name: "_RopeModule"), "_CollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "_RopeModule",
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/210680650.zip",
            checksum: "d2ac88ca93e42eae6b79b1a05b1af17dd25ce7c7e9013764b3491098b7864115"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/210680652.zip",
            checksum: "89100cd015fdf97f8eda7933477693c8f69d01f581aa1ad61fea68878e0d23fc"
        ),
        .target(
            name: "_CollectionsUtilities_Aggregation",
            dependencies: [.target(name: "_CollectionsUtilities")]
        ),
        .binaryTarget(
            name: "_CollectionsUtilities",
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/210680654.zip",
            checksum: "23814b48a80b6775f6ab0b3e4a0887ae55522004208f8e1fba3ab59cf1b6ef76"
        )
    ]
)