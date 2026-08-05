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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/InternalCollectionsUtilities-91048a5228448eb37d53dca4e18c7eb3e41c9218cdcb1567b26e5729d2ebd409.xcframework.zip",
            checksum: "91048a5228448eb37d53dca4e18c7eb3e41c9218cdcb1567b26e5729d2ebd409"
        ),
        .target(
            name: "BasicContainers_Aggregation",
            dependencies: ["BasicContainers"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "BasicContainers",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/BasicContainers-79e627d840de52002466b5fb3a70a45d4b594a66a6ff9e181d8999d7e08c2710.xcframework.zip",
            checksum: "79e627d840de52002466b5fb3a70a45d4b594a66a6ff9e181d8999d7e08c2710"
        ),
        .target(
            name: "BitCollections_Aggregation",
            dependencies: ["BitCollections"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "BitCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/BitCollections-9ca137262d79c357cd31b2cc59ea945fe504863c7bfdba8e030a595b31f4747b.xcframework.zip",
            checksum: "9ca137262d79c357cd31b2cc59ea945fe504863c7bfdba8e030a595b31f4747b"
        ),
        .target(
            name: "ContainersPreview_Aggregation",
            dependencies: ["ContainersPreview"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "ContainersPreview",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/ContainersPreview-51d6c2701e329992a8202b2372b39e84602c920acd908001ee634cb01e4165c1.xcframework.zip",
            checksum: "51d6c2701e329992a8202b2372b39e84602c920acd908001ee634cb01e4165c1"
        ),
        .target(
            name: "DequeModule_Aggregation",
            dependencies: ["DequeModule"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "DequeModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/DequeModule-cf0fb614f5fa74b1c021e2b276873554e6545ed0b0ae7dc07e3f504415771d03.xcframework.zip",
            checksum: "cf0fb614f5fa74b1c021e2b276873554e6545ed0b0ae7dc07e3f504415771d03"
        ),
        .target(
            name: "HashTreeCollections_Aggregation",
            dependencies: ["HashTreeCollections"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "HashTreeCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/HashTreeCollections-c22bd8ce73ef63c39a97d9052df6465d2da6326b4097d2c9631326fb4b53677a.xcframework.zip",
            checksum: "c22bd8ce73ef63c39a97d9052df6465d2da6326b4097d2c9631326fb4b53677a"
        ),
        .target(
            name: "HeapModule_Aggregation",
            dependencies: ["HeapModule"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "HeapModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/HeapModule-8f4d347503a8319e0ad523b539c6160bb1261e8b61860ad5d54640c492ecb006.xcframework.zip",
            checksum: "8f4d347503a8319e0ad523b539c6160bb1261e8b61860ad5d54640c492ecb006"
        ),
        .target(
            name: "OrderedCollections_Aggregation",
            dependencies: ["OrderedCollections"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "OrderedCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/OrderedCollections-d205f415ceeb08cbdec9c738294467a2eb7317aa4a105fa8518b55627f913e9e.xcframework.zip",
            checksum: "d205f415ceeb08cbdec9c738294467a2eb7317aa4a105fa8518b55627f913e9e"
        ),
        .target(
            name: "_RopeModule_Aggregation",
            dependencies: ["_RopeModule"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_RopeModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/_RopeModule-692d9704fa410afa06e2a8eda07cd979d7f3c203d4c76f9ab1dd9c7acf3a39bc.xcframework.zip",
            checksum: "692d9704fa410afa06e2a8eda07cd979d7f3c203d4c76f9ab1dd9c7acf3a39bc"
        ),
        .target(
            name: "TrailingElementsModule_Aggregation",
            dependencies: ["TrailingElementsModule"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "TrailingElementsModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/TrailingElementsModule-f852306161ac1a1240c5ae3cfa5e19d5867044e42e77d859ae1bebb2396d0591.xcframework.zip",
            checksum: "f852306161ac1a1240c5ae3cfa5e19d5867044e42e77d859ae1bebb2396d0591"
        ),
        .target(
            name: "SortedCollections_Aggregation",
            dependencies: ["SortedCollections"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SortedCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/SortedCollections-095a06bffe9ed81b81496d9f94f53c4fd83f11c4ac6242b4993d8a7eeeec641d.xcframework.zip",
            checksum: "095a06bffe9ed81b81496d9f94f53c4fd83f11c4ac6242b4993d8a7eeeec641d"
        ),
        .target(
            name: "Collections_Aggregation",
            dependencies: ["Collections"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Collections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/Collections-34e90c105ad30cd4690c63f0b9bdc7f4f91dd66674fa5899e85a8b55d8790d45.xcframework.zip",
            checksum: "34e90c105ad30cd4690c63f0b9bdc7f4f91dd66674fa5899e85a8b55d8790d45"
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