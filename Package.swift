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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0-precompiled.2/InternalCollectionsUtilities-105972b31724391a663a19b19391f00cf8769b1b0e3e896e9055931de004bd02.xcframework.zip",
            checksum: "105972b31724391a663a19b19391f00cf8769b1b0e3e896e9055931de004bd02"
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0-precompiled.2/BasicContainers-88b3ce8ecce3a319b2239ddf262534e3e44211a1e67a8068519bbff3024658cc.xcframework.zip",
            checksum: "88b3ce8ecce3a319b2239ddf262534e3e44211a1e67a8068519bbff3024658cc"
        ),
        .target(
            name: "BitCollections_Aggregation",
            dependencies: ["BitCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "BitCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0-precompiled.2/BitCollections-17f987b88cea4c4e314780c6371ba4c5143866f04e0d047773b77dca88db6c36.xcframework.zip",
            checksum: "17f987b88cea4c4e314780c6371ba4c5143866f04e0d047773b77dca88db6c36"
        ),
        .target(
            name: "ContainersPreview_Aggregation",
            dependencies: ["ContainersPreview", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "ContainersPreview",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0-precompiled.2/ContainersPreview-33a06b72f45b11741fcac000988c923fd00d0c42656256c3fe57d61b60d080c5.xcframework.zip",
            checksum: "33a06b72f45b11741fcac000988c923fd00d0c42656256c3fe57d61b60d080c5"
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0-precompiled.2/DequeModule-f56245cd252d2c5b018052496de07ecb178555aaa28693733cae78c0a4d7a61b.xcframework.zip",
            checksum: "f56245cd252d2c5b018052496de07ecb178555aaa28693733cae78c0a4d7a61b"
        ),
        .target(
            name: "HashTreeCollections_Aggregation",
            dependencies: ["HashTreeCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HashTreeCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0-precompiled.2/HashTreeCollections-b85732422bd17a8a12302ce1c96ec2d7a8a14dba5e1c1d863aa69f128a91e47d.xcframework.zip",
            checksum: "b85732422bd17a8a12302ce1c96ec2d7a8a14dba5e1c1d863aa69f128a91e47d"
        ),
        .target(
            name: "HeapModule_Aggregation",
            dependencies: ["HeapModule", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HeapModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0-precompiled.2/HeapModule-d5dd8727e4ff7f3f2158f8761fe4b0cae4aeeb9cad8f80056ff444b162036f53.xcframework.zip",
            checksum: "d5dd8727e4ff7f3f2158f8761fe4b0cae4aeeb9cad8f80056ff444b162036f53"
        ),
        .target(
            name: "OrderedCollections_Aggregation",
            dependencies: ["OrderedCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "OrderedCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0-precompiled.2/OrderedCollections-1d137d639eda0af18ee8d08fc9cd014a2815b96fc61ef7348dbeb83912630e1e.xcframework.zip",
            checksum: "1d137d639eda0af18ee8d08fc9cd014a2815b96fc61ef7348dbeb83912630e1e"
        ),
        .target(
            name: "_RopeModule_Aggregation",
            dependencies: ["_RopeModule", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "_RopeModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0-precompiled.2/_RopeModule-051311756f4659349c8b2c7a4c70710544b9f2015b5e7cf220fb5a837416e421.xcframework.zip",
            checksum: "051311756f4659349c8b2c7a4c70710544b9f2015b5e7cf220fb5a837416e421"
        ),
        .target(
            name: "TrailingElementsModule_Aggregation",
            dependencies: ["TrailingElementsModule"]
        ),
        .binaryTarget(
            name: "TrailingElementsModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0-precompiled.2/TrailingElementsModule-0556703a6400de64d36b11189e6e66d29a3346ee089f7e5362b754a69fc1db7d.xcframework.zip",
            checksum: "0556703a6400de64d36b11189e6e66d29a3346ee089f7e5362b754a69fc1db7d"
        ),
        .target(
            name: "SortedCollections_Aggregation",
            dependencies: ["SortedCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "SortedCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0-precompiled.2/SortedCollections-62fe72d06af57c74250ff71e43ca81e3215dd8829f414143e3d1174172f27d67.xcframework.zip",
            checksum: "62fe72d06af57c74250ff71e43ca81e3215dd8829f414143e3d1174172f27d67"
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0-precompiled.2/Collections-37eb44d44b36e4e79e2c774bed3c25282ab4c52a1c0d9c9bc7f43b80b5f25999.xcframework.zip",
            checksum: "37eb44d44b36e4e79e2c774bed3c25282ab4c52a1c0d9c9bc7f43b80b5f25999"
        )
    ]
)