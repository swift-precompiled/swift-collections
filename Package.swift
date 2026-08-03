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
            name: "SortedCollections",
            targets: ["SortedCollections_Aggregation"]
        ),
        .library(
            name: "Collections",
            targets: ["Collections_Aggregation"]
        )
    ],
    traits: [
        .trait(
            name: "UnstableContainersPreview",
            description: "Enables source-unstable components of the ContainersPreview module in\nswift-collections. This allows experimental use of the Container\nprotocols and associated algorithms."
        ),
        .trait(
            name: "UnstableHashedContainers",
            description: "Enables support for noncopyable set members and dictionary keys in\n`BasicContainers`. This requires a Standard Library with generalized\n`Equatable` and `Hashable` protocols that allow noncopyable conformers;\nthis feature has not shipped in a stable compiler version yet."
        ),
        .trait(
            name: "UnstableSortedCollections",
            description: "Enables source-unstable prototypes of `SortedSet` and `SortedDictionary`,\ntwo potential new collection types implementing in-memory B-trees.\nThese are early developer drafts, and they not ready for use in\nproduction. We will make significant, source breaking API changes to these\ntypes before they ship."
        ),
        .trait(
            name: "default",
            description: "The default traits of this package."
        )
    ],
    targets: [
        .target(
            name: "InternalCollectionsUtilities_Aggregation",
            dependencies: ["InternalCollectionsUtilities"]
        ),
        .binaryTarget(
            name: "InternalCollectionsUtilities",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/InternalCollectionsUtilities-f3b276a6f7c7dfc2689da7b3fea54dd673d26aa22ae2a8fc72cd055842ab3e13.xcframework.zip",
            checksum: "f3b276a6f7c7dfc2689da7b3fea54dd673d26aa22ae2a8fc72cd055842ab3e13"
        ),
        .target(
            name: "BasicContainers_Aggregation",
            dependencies: [
                "BasicContainers",
                "InternalCollectionsUtilities_Aggregation",
                "ContainersPreview_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "BasicContainers",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/BasicContainers-4b258831367b8d5d38ecd561fdb1be694b55dcb7debc6cf5ea14e04aae1001f1.xcframework.zip",
            checksum: "4b258831367b8d5d38ecd561fdb1be694b55dcb7debc6cf5ea14e04aae1001f1"
        ),
        .target(
            name: "BitCollections_Aggregation",
            dependencies: ["BitCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "BitCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/BitCollections-0e5449d6cca7840084e675fd4f6931a37a3fbe9ededb13ad62cbcfd6df3753db.xcframework.zip",
            checksum: "0e5449d6cca7840084e675fd4f6931a37a3fbe9ededb13ad62cbcfd6df3753db"
        ),
        .target(
            name: "ContainersPreview_Aggregation",
            dependencies: ["ContainersPreview", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "ContainersPreview",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/ContainersPreview-347b0ffc4f65990fb6d08838d76e246bc5f0e456ae5167d00e01e7b7ec282a2a.xcframework.zip",
            checksum: "347b0ffc4f65990fb6d08838d76e246bc5f0e456ae5167d00e01e7b7ec282a2a"
        ),
        .target(
            name: "DequeModule_Aggregation",
            dependencies: [
                "DequeModule",
                "ContainersPreview_Aggregation",
                "InternalCollectionsUtilities_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "DequeModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/DequeModule-e7313b37cb0b5c9e3b6836bca984147fe746f45efb83b6d04e1b9072b9ee7026.xcframework.zip",
            checksum: "e7313b37cb0b5c9e3b6836bca984147fe746f45efb83b6d04e1b9072b9ee7026"
        ),
        .target(
            name: "HashTreeCollections_Aggregation",
            dependencies: ["HashTreeCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HashTreeCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/HashTreeCollections-fba2c606b805e4d53064d647925ca416ce9486d512cf111e09618c9e813de21d.xcframework.zip",
            checksum: "fba2c606b805e4d53064d647925ca416ce9486d512cf111e09618c9e813de21d"
        ),
        .target(
            name: "HeapModule_Aggregation",
            dependencies: ["HeapModule", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HeapModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/HeapModule-c513d88f1a8b23d9b33e2a03f89cc7e577e17e377d8dfefd44c847c299928584.xcframework.zip",
            checksum: "c513d88f1a8b23d9b33e2a03f89cc7e577e17e377d8dfefd44c847c299928584"
        ),
        .target(
            name: "OrderedCollections_Aggregation",
            dependencies: ["OrderedCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "OrderedCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/OrderedCollections-47d48834ca7291bbd6bc89ca428c483362f9fc8b2111696aca8adf7e67a82b79.xcframework.zip",
            checksum: "47d48834ca7291bbd6bc89ca428c483362f9fc8b2111696aca8adf7e67a82b79"
        ),
        .target(
            name: "_RopeModule_Aggregation",
            dependencies: ["_RopeModule", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "_RopeModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/_RopeModule-c2e96873b52e5ed3a9f200dd87d899a70424e4aa1878f4d22b4c769d3b31d61b.xcframework.zip",
            checksum: "c2e96873b52e5ed3a9f200dd87d899a70424e4aa1878f4d22b4c769d3b31d61b"
        ),
        .target(
            name: "TrailingElementsModule_Aggregation",
            dependencies: ["TrailingElementsModule"]
        ),
        .binaryTarget(
            name: "TrailingElementsModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/TrailingElementsModule-9d6a782f9cce8ae82dae2df5dfce9d442180a42f5cc62da39ddb5eb7181285ff.xcframework.zip",
            checksum: "9d6a782f9cce8ae82dae2df5dfce9d442180a42f5cc62da39ddb5eb7181285ff"
        ),
        .target(
            name: "SortedCollections_Aggregation",
            dependencies: ["SortedCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "SortedCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/SortedCollections-f984488e36c37e0cedb678f7fdf8adcef93776a8dd5e9f399c78476c6ec95c6c.xcframework.zip",
            checksum: "f984488e36c37e0cedb678f7fdf8adcef93776a8dd5e9f399c78476c6ec95c6c"
        ),
        .target(
            name: "Collections_Aggregation",
            dependencies: [
                "Collections",
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/Collections-0ec68872ae4d8cf396c88211fbed370a413fc2fd211d0abd4bf38f422db77a86.xcframework.zip",
            checksum: "0ec68872ae4d8cf396c88211fbed370a413fc2fd211d0abd4bf38f422db77a86"
        )
    ]
)