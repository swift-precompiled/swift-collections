// swift-tools-version:5.10.0

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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.2.1/InternalCollectionsUtilities.xcframework.zip",
            checksum: "07db8522b30fee034bf9feb05016efe645543976befccbbbbb64c369da27b3e2"
        ),
        .target(
            name: "BitCollections_Aggregation",
            dependencies: [.target(name: "BitCollections"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "BitCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.2.1/BitCollections.xcframework.zip",
            checksum: "971ca2bdc30ff7aa24d118d67161b24f1dffa0b7f0496b21191d4aef1d8a954a"
        ),
        .target(
            name: "DequeModule_Aggregation",
            dependencies: [.target(name: "DequeModule"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "DequeModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.2.1/DequeModule.xcframework.zip",
            checksum: "d2f067adf243d9725b077140c4c147becd548be94c926972725b2a5be5105f3a"
        ),
        .target(
            name: "HashTreeCollections_Aggregation",
            dependencies: [.target(name: "HashTreeCollections"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HashTreeCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.2.1/HashTreeCollections.xcframework.zip",
            checksum: "12921dbb06e9ffa5b2f3f6155f5b6e5b404607346005fa39a072e639461cba0c"
        ),
        .target(
            name: "HeapModule_Aggregation",
            dependencies: [.target(name: "HeapModule"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HeapModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.2.1/HeapModule.xcframework.zip",
            checksum: "0f49deb7d8f4ce99b6815784e8075adc95e1325c046beb8d111abbf77c6829aa"
        ),
        .target(
            name: "OrderedCollections_Aggregation",
            dependencies: [.target(name: "OrderedCollections"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "OrderedCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.2.1/OrderedCollections.xcframework.zip",
            checksum: "42a378f9417a7ae01dfceb9c1fb475ad219eb16defb7e2c4523b4010aa63f05c"
        ),
        .target(
            name: "_RopeModule_Aggregation",
            dependencies: [.target(name: "_RopeModule"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "_RopeModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.2.1/_RopeModule.xcframework.zip",
            checksum: "84cc3d04d0ece0aa93aa8ce2c25bb50d11b00751c40fdf157307bfe6e22e29ed"
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.2.1/Collections.xcframework.zip",
            checksum: "b20b472080f1fe1388020917df7c6bf47b77416da444d0f281094549b7242e62"
        )
    ]
)