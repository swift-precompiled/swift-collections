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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.1.1/BitCollections.xcframework.zip",
            checksum: "baf8349a2891e7cce45878932bf1904beb6aa21a55effaf2323a5562bfb2a5ef"
        ),
        .target(
            name: "DequeModule_Aggregation",
            dependencies: [.target(name: "DequeModule"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "DequeModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.1.1/DequeModule.xcframework.zip",
            checksum: "3807269838121d5d9931b1c25eb265d293711fca71866cc5d1f904ec08163570"
        ),
        .target(
            name: "HashTreeCollections_Aggregation",
            dependencies: [.target(name: "HashTreeCollections"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HashTreeCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.1.1/HashTreeCollections.xcframework.zip",
            checksum: "0b620a5e8fa7016b4edf8f4e2eeaa5249962d986c7b3bdb91565f0de342f777a"
        ),
        .target(
            name: "HeapModule_Aggregation",
            dependencies: [.target(name: "HeapModule"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HeapModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.1.1/HeapModule.xcframework.zip",
            checksum: "a811ac5493f037b71b5328e03f7faec7efae2e1dcb16e6f30d622751d9c418e5"
        ),
        .target(
            name: "OrderedCollections_Aggregation",
            dependencies: [.target(name: "OrderedCollections"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "OrderedCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.1.1/OrderedCollections.xcframework.zip",
            checksum: "2076936cc050f142faf6bd85d9c6b4c05462c8ac05cba6fa9ffcad8bd0c1ce18"
        ),
        .target(
            name: "_RopeModule_Aggregation",
            dependencies: [.target(name: "_RopeModule"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "_RopeModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.1.1/_RopeModule.xcframework.zip",
            checksum: "3955966105de501994fcb238d7415b527ed2d5c0195da31f5c386d244817d9a3"
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.1.1/Collections.xcframework.zip",
            checksum: "d111d6dcccac4ef80692123a9605e36364fe6ea147a716a5580da5d4fb0e4b23"
        ),
        .target(
            name: "InternalCollectionsUtilities_Aggregation",
            dependencies: [.target(name: "InternalCollectionsUtilities")]
        ),
        .binaryTarget(
            name: "InternalCollectionsUtilities",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.1.1/InternalCollectionsUtilities.xcframework.zip",
            checksum: "adbf9d7d0ef66a1128fb9638ee620c22269d957447d6c51ff43a6cc8ba724746"
        )
    ]
)