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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/InternalCollectionsUtilities-37a136d60594a3e648dee580b0eb236564c90e10d17acf9846e668aacdcf9cde.xcframework.zip",
            checksum: "37a136d60594a3e648dee580b0eb236564c90e10d17acf9846e668aacdcf9cde"
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/BasicContainers-ff2ef33e4984390a7e0f7b54d61e3707eb22348ecdbce873138db69f4e1bdd00.xcframework.zip",
            checksum: "ff2ef33e4984390a7e0f7b54d61e3707eb22348ecdbce873138db69f4e1bdd00"
        ),
        .target(
            name: "BitCollections_Aggregation",
            dependencies: ["BitCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "BitCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/BitCollections-16146f7854ee3612cc48f0a04e84769c7717d9e22ff7d94a92b939a3d394ca09.xcframework.zip",
            checksum: "16146f7854ee3612cc48f0a04e84769c7717d9e22ff7d94a92b939a3d394ca09"
        ),
        .target(
            name: "ContainersPreview_Aggregation",
            dependencies: ["ContainersPreview", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "ContainersPreview",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/ContainersPreview-7d241b21f6b6c03d790a6061d930690bca5627598aba5cdbe0cb43b1527f9426.xcframework.zip",
            checksum: "7d241b21f6b6c03d790a6061d930690bca5627598aba5cdbe0cb43b1527f9426"
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/DequeModule-4a946cf1ff8469cd7ab10eef9f8f49c6ba4c6c7c549c223c1d39133cd0cf5426.xcframework.zip",
            checksum: "4a946cf1ff8469cd7ab10eef9f8f49c6ba4c6c7c549c223c1d39133cd0cf5426"
        ),
        .target(
            name: "HashTreeCollections_Aggregation",
            dependencies: ["HashTreeCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HashTreeCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/HashTreeCollections-1d6f30c30657fc3902762e5effb5ea635b928b86f00b8e8811a6994a8ee0154c.xcframework.zip",
            checksum: "1d6f30c30657fc3902762e5effb5ea635b928b86f00b8e8811a6994a8ee0154c"
        ),
        .target(
            name: "HeapModule_Aggregation",
            dependencies: ["HeapModule", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HeapModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/HeapModule-50628d4f4b0ce4c3f02b6cf0ed99774869d0329eccd2f44744dca59708eddd17.xcframework.zip",
            checksum: "50628d4f4b0ce4c3f02b6cf0ed99774869d0329eccd2f44744dca59708eddd17"
        ),
        .target(
            name: "OrderedCollections_Aggregation",
            dependencies: ["OrderedCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "OrderedCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/OrderedCollections-c2c13bcd59bb54a0e1e12cb3a8b8a9c67146d6e5f469086e6190d72e3ae07038.xcframework.zip",
            checksum: "c2c13bcd59bb54a0e1e12cb3a8b8a9c67146d6e5f469086e6190d72e3ae07038"
        ),
        .target(
            name: "_RopeModule_Aggregation",
            dependencies: ["_RopeModule", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "_RopeModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/_RopeModule-7a37216948f65620b78f9f78b1c90c16aa0bff117e531827fee5782cc33aae40.xcframework.zip",
            checksum: "7a37216948f65620b78f9f78b1c90c16aa0bff117e531827fee5782cc33aae40"
        ),
        .target(
            name: "TrailingElementsModule_Aggregation",
            dependencies: ["TrailingElementsModule"]
        ),
        .binaryTarget(
            name: "TrailingElementsModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/TrailingElementsModule-4f8589bcd41cd0481736092d6ecc53ffb9030ca8f17f712ad6f2ddc9bf5f8a68.xcframework.zip",
            checksum: "4f8589bcd41cd0481736092d6ecc53ffb9030ca8f17f712ad6f2ddc9bf5f8a68"
        ),
        .target(
            name: "SortedCollections_Aggregation",
            dependencies: ["SortedCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "SortedCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/SortedCollections-c283ea5bcd197a83586d368bd0c09b2c00a246f4cd08907483edfeca7942a016.xcframework.zip",
            checksum: "c283ea5bcd197a83586d368bd0c09b2c00a246f4cd08907483edfeca7942a016"
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/Collections-ce7b2448bc311f57c2c104d9b4133d1a2b0b98e42f39af53e932758c4df7cd00.xcframework.zip",
            checksum: "ce7b2448bc311f57c2c104d9b4133d1a2b0b98e42f39af53e932758c4df7cd00"
        )
    ]
)