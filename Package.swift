// swift-tools-version:6.2.0

import PackageDescription
import Foundation

let package = Package(
    name: "swift-collections",
    products: [
        .library(
            name: "BasicContainers",
            targets: ["BasicContainers_PrecompiledProduct"]
        ),
        .library(
            name: "BitCollections",
            targets: ["BitCollections_PrecompiledProduct"]
        ),
        .library(
            name: "ContainersPreview",
            targets: ["ContainersPreview_PrecompiledProduct"]
        ),
        .library(
            name: "DequeModule",
            targets: ["DequeModule_PrecompiledProduct"]
        ),
        .library(
            name: "HashTreeCollections",
            targets: ["HashTreeCollections_PrecompiledProduct"]
        ),
        .library(
            name: "HeapModule",
            targets: ["HeapModule_PrecompiledProduct"]
        ),
        .library(
            name: "OrderedCollections",
            targets: ["OrderedCollections_PrecompiledProduct"]
        ),
        .library(
            name: "_RopeModule",
            targets: ["_RopeModule_PrecompiledProduct"]
        ),
        .library(
            name: "TrailingElementsModule",
            targets: ["TrailingElementsModule_PrecompiledProduct"]
        ),
        .library(
            name: "SortedCollections",
            targets: ["SortedCollections_PrecompiledProduct"]
        ),
        .library(
            name: "Collections",
            targets: ["Collections_PrecompiledProduct"]
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
            dependencies: ["InternalCollectionsUtilities"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "InternalCollectionsUtilities",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/InternalCollectionsUtilities-ada18fe6c00702f1a4265aac042f4c4d712535139dcb1f1f3941357d7435a9bb.xcframework.zip",
            checksum: "ada18fe6c00702f1a4265aac042f4c4d712535139dcb1f1f3941357d7435a9bb"
        ),
        .target(
            name: "BasicContainers_Aggregation",
            dependencies: ["BasicContainers"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "BasicContainers",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/BasicContainers-97d6c530c1f477e81d4894bb1dbf47d2126918d4a263242479664cb3ce85ac4c.xcframework.zip",
            checksum: "97d6c530c1f477e81d4894bb1dbf47d2126918d4a263242479664cb3ce85ac4c"
        ),
        .target(
            name: "BitCollections_Aggregation",
            dependencies: ["BitCollections"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "BitCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/BitCollections-5f7ca620e7ef53ea64290fee39fbc06dff164bb0d9c299f67621f2b0bd999be7.xcframework.zip",
            checksum: "5f7ca620e7ef53ea64290fee39fbc06dff164bb0d9c299f67621f2b0bd999be7"
        ),
        .target(
            name: "ContainersPreview_Aggregation",
            dependencies: ["ContainersPreview"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "ContainersPreview",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/ContainersPreview-46887ba5b321ece80c0bcbfd3ae6109cfb4ff1273097588392557ed2a677d24c.xcframework.zip",
            checksum: "46887ba5b321ece80c0bcbfd3ae6109cfb4ff1273097588392557ed2a677d24c"
        ),
        .target(
            name: "DequeModule_Aggregation",
            dependencies: ["DequeModule"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "DequeModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/DequeModule-ee26d3db5641d64970bd9e15c71fa65543bcacd2b3fb2dbd74b59893ec3f7241.xcframework.zip",
            checksum: "ee26d3db5641d64970bd9e15c71fa65543bcacd2b3fb2dbd74b59893ec3f7241"
        ),
        .target(
            name: "HashTreeCollections_Aggregation",
            dependencies: ["HashTreeCollections"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "HashTreeCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/HashTreeCollections-7108b7db7f6c323971b538bc4071bc40c643469a0d835ef5aca0b3dcb28af8f3.xcframework.zip",
            checksum: "7108b7db7f6c323971b538bc4071bc40c643469a0d835ef5aca0b3dcb28af8f3"
        ),
        .target(
            name: "HeapModule_Aggregation",
            dependencies: ["HeapModule"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "HeapModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/HeapModule-651c5e42f5125e5e36437c187752e9320e36679abc360feb110be8f99471382b.xcframework.zip",
            checksum: "651c5e42f5125e5e36437c187752e9320e36679abc360feb110be8f99471382b"
        ),
        .target(
            name: "OrderedCollections_Aggregation",
            dependencies: ["OrderedCollections"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "OrderedCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/OrderedCollections-732267f9de1a242fbec92587e0868be4e3c0df8e7f4d4669a9e374dd6dd1c5ec.xcframework.zip",
            checksum: "732267f9de1a242fbec92587e0868be4e3c0df8e7f4d4669a9e374dd6dd1c5ec"
        ),
        .target(
            name: "_RopeModule_Aggregation",
            dependencies: ["_RopeModule"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_RopeModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/_RopeModule-68c2bb71cbd37d6373b6094cb66702eeed260df133fa01b08e560c03b0f549c7.xcframework.zip",
            checksum: "68c2bb71cbd37d6373b6094cb66702eeed260df133fa01b08e560c03b0f549c7"
        ),
        .target(
            name: "TrailingElementsModule_Aggregation",
            dependencies: ["TrailingElementsModule"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "TrailingElementsModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/TrailingElementsModule-22f89d1791660c1dd4ecea3181747bbfa9434d50e77e6940dfc05cb2a5ff193f.xcframework.zip",
            checksum: "22f89d1791660c1dd4ecea3181747bbfa9434d50e77e6940dfc05cb2a5ff193f"
        ),
        .target(
            name: "SortedCollections_Aggregation",
            dependencies: ["SortedCollections"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SortedCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/SortedCollections-40d29fea6f6390fb2046eaebd7097ebf3ecbb8c0439a0101ed35cb08c0e9195d.xcframework.zip",
            checksum: "40d29fea6f6390fb2046eaebd7097ebf3ecbb8c0439a0101ed35cb08c0e9195d"
        ),
        .target(
            name: "Collections_Aggregation",
            dependencies: ["Collections"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Collections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/Collections-cb86c105c74f48a542ba8c5c24f699d07c0d91605b79d98c48d9bb588760e25c.xcframework.zip",
            checksum: "cb86c105c74f48a542ba8c5c24f699d07c0d91605b79d98c48d9bb588760e25c"
        ),
        .target(
            name: "BasicContainers_PrecompiledProduct",
            dependencies: [
                "BasicContainers_Aggregation",
                "InternalCollectionsUtilities_Aggregation",
                "ContainersPreview_Aggregation"
            ]
        ),
        .target(
            name: "BitCollections_PrecompiledProduct",
            dependencies: ["BitCollections_Aggregation", "InternalCollectionsUtilities_Aggregation"]
        ),
        .target(
            name: "ContainersPreview_PrecompiledProduct",
            dependencies: ["ContainersPreview_Aggregation", "InternalCollectionsUtilities_Aggregation"]
        ),
        .target(
            name: "DequeModule_PrecompiledProduct",
            dependencies: [
                "DequeModule_Aggregation",
                "ContainersPreview_Aggregation",
                "InternalCollectionsUtilities_Aggregation"
            ]
        ),
        .target(
            name: "HashTreeCollections_PrecompiledProduct",
            dependencies: ["HashTreeCollections_Aggregation", "InternalCollectionsUtilities_Aggregation"]
        ),
        .target(
            name: "HeapModule_PrecompiledProduct",
            dependencies: ["HeapModule_Aggregation", "InternalCollectionsUtilities_Aggregation"]
        ),
        .target(
            name: "OrderedCollections_PrecompiledProduct",
            dependencies: ["OrderedCollections_Aggregation", "InternalCollectionsUtilities_Aggregation"]
        ),
        .target(
            name: "_RopeModule_PrecompiledProduct",
            dependencies: ["_RopeModule_Aggregation", "InternalCollectionsUtilities_Aggregation"]
        ),
        .target(
            name: "TrailingElementsModule_PrecompiledProduct",
            dependencies: ["TrailingElementsModule_Aggregation"]
        ),
        .target(
            name: "SortedCollections_PrecompiledProduct",
            dependencies: ["SortedCollections_Aggregation", "InternalCollectionsUtilities_Aggregation"]
        ),
        .target(
            name: "Collections_PrecompiledProduct",
            dependencies: [
                "Collections_Aggregation",
                "BitCollections_Aggregation",
                "InternalCollectionsUtilities_Aggregation",
                "DequeModule_Aggregation",
                "ContainersPreview_Aggregation",
                "HashTreeCollections_Aggregation",
                "HeapModule_Aggregation",
                "OrderedCollections_Aggregation",
                "_RopeModule_Aggregation"
            ]
        )
    ]
)