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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/InternalCollectionsUtilities-48739c0ffe1cab3f57abad2c2787f76ab2d3bc831deb77c816c59a10e1a3704b.xcframework.zip",
            checksum: "48739c0ffe1cab3f57abad2c2787f76ab2d3bc831deb77c816c59a10e1a3704b"
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/BasicContainers-accf90ea2c0d4e8d67ca3d4682cdee701415d6c2343ca3c3fcf95ab9599ee394.xcframework.zip",
            checksum: "accf90ea2c0d4e8d67ca3d4682cdee701415d6c2343ca3c3fcf95ab9599ee394"
        ),
        .target(
            name: "BitCollections_Aggregation",
            dependencies: ["BitCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "BitCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/BitCollections-f3918e08734e89179cf9e45562adb113bac1cce3f6cde1caf415d21b1b8c1bb2.xcframework.zip",
            checksum: "f3918e08734e89179cf9e45562adb113bac1cce3f6cde1caf415d21b1b8c1bb2"
        ),
        .target(
            name: "ContainersPreview_Aggregation",
            dependencies: ["ContainersPreview", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "ContainersPreview",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/ContainersPreview-c7823850da2d7c23a45f0ae78adc1133db20ec64b7e69dcac290d55d48bc148e.xcframework.zip",
            checksum: "c7823850da2d7c23a45f0ae78adc1133db20ec64b7e69dcac290d55d48bc148e"
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/DequeModule-16e551b06ecd561d4ead7ad5f71759fd4c03fb373ebc31a68d865cfaa5049d53.xcframework.zip",
            checksum: "16e551b06ecd561d4ead7ad5f71759fd4c03fb373ebc31a68d865cfaa5049d53"
        ),
        .target(
            name: "HashTreeCollections_Aggregation",
            dependencies: ["HashTreeCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HashTreeCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/HashTreeCollections-59641ef74d77da0e3fd24ab2ea5f669b648735ecfc76593f0c8ca42f7c94434f.xcframework.zip",
            checksum: "59641ef74d77da0e3fd24ab2ea5f669b648735ecfc76593f0c8ca42f7c94434f"
        ),
        .target(
            name: "HeapModule_Aggregation",
            dependencies: ["HeapModule", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HeapModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/HeapModule-77194e0171402b4a72a7a6dd39f2126033fba5d02fc19ac6343825d9f4126032.xcframework.zip",
            checksum: "77194e0171402b4a72a7a6dd39f2126033fba5d02fc19ac6343825d9f4126032"
        ),
        .target(
            name: "OrderedCollections_Aggregation",
            dependencies: ["OrderedCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "OrderedCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/OrderedCollections-f3843662696660c3c4df5bca3ee64f34665906ce90838a52c21f8c0426b38685.xcframework.zip",
            checksum: "f3843662696660c3c4df5bca3ee64f34665906ce90838a52c21f8c0426b38685"
        ),
        .target(
            name: "_RopeModule_Aggregation",
            dependencies: ["_RopeModule", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "_RopeModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/_RopeModule-f23f76918180727d71160d4beb0dfd00272824941aaa30c6ce46ee93f1d346ae.xcframework.zip",
            checksum: "f23f76918180727d71160d4beb0dfd00272824941aaa30c6ce46ee93f1d346ae"
        ),
        .target(
            name: "TrailingElementsModule_Aggregation",
            dependencies: ["TrailingElementsModule"]
        ),
        .binaryTarget(
            name: "TrailingElementsModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/TrailingElementsModule-0696b992d20dafd56eeb6ef0545300258128fc368420950afe08df4baf1a7c48.xcframework.zip",
            checksum: "0696b992d20dafd56eeb6ef0545300258128fc368420950afe08df4baf1a7c48"
        ),
        .target(
            name: "SortedCollections_Aggregation",
            dependencies: ["SortedCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "SortedCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/SortedCollections-c859287d9f92f6746a99887bc10ef65cc9583e8d9fa2c7201f0429e428584754.xcframework.zip",
            checksum: "c859287d9f92f6746a99887bc10ef65cc9583e8d9fa2c7201f0429e428584754"
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/Collections-f24173e9131f85166e03fb311e2802c02faf716865bc88fad2502ab6c43ba798.xcframework.zip",
            checksum: "f24173e9131f85166e03fb311e2802c02faf716865bc88fad2502ab6c43ba798"
        )
    ]
)