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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/InternalCollectionsUtilities-734d76c4630b5a515a63273b8a0ba2b3f96c56943f267718f88f3a361cdd498d.xcframework.zip",
            checksum: "734d76c4630b5a515a63273b8a0ba2b3f96c56943f267718f88f3a361cdd498d"
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/BasicContainers-e7b64a70e55884e9c9054e7e2d7707aeef759d5c18aa33afd7fcac1d850a1418.xcframework.zip",
            checksum: "e7b64a70e55884e9c9054e7e2d7707aeef759d5c18aa33afd7fcac1d850a1418"
        ),
        .target(
            name: "BitCollections_Aggregation",
            dependencies: ["BitCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "BitCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/BitCollections-a2ad04f4d0374b0dbc17c332fbef21abe589582c8798b5fb053f6b2654b80c79.xcframework.zip",
            checksum: "a2ad04f4d0374b0dbc17c332fbef21abe589582c8798b5fb053f6b2654b80c79"
        ),
        .target(
            name: "ContainersPreview_Aggregation",
            dependencies: ["ContainersPreview", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "ContainersPreview",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/ContainersPreview-f584df9233e9b04284f2b2b475e2b4c8d3d2d88d61848f36cce802de2aa22c57.xcframework.zip",
            checksum: "f584df9233e9b04284f2b2b475e2b4c8d3d2d88d61848f36cce802de2aa22c57"
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/DequeModule-26d40ec23bf65ba34005299822348e5111e186f8ffe0ed545f1b62624c6a36ca.xcframework.zip",
            checksum: "26d40ec23bf65ba34005299822348e5111e186f8ffe0ed545f1b62624c6a36ca"
        ),
        .target(
            name: "HashTreeCollections_Aggregation",
            dependencies: ["HashTreeCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HashTreeCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/HashTreeCollections-42cd53760551b9de6633ab739b66da7ec89cfc4d64e76858613839bfa9d6a508.xcframework.zip",
            checksum: "42cd53760551b9de6633ab739b66da7ec89cfc4d64e76858613839bfa9d6a508"
        ),
        .target(
            name: "HeapModule_Aggregation",
            dependencies: ["HeapModule", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HeapModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/HeapModule-222859a1bfbc9a19501be8d62bae72180b3d2c8a6b959f8cd45c5cdb587c1704.xcframework.zip",
            checksum: "222859a1bfbc9a19501be8d62bae72180b3d2c8a6b959f8cd45c5cdb587c1704"
        ),
        .target(
            name: "OrderedCollections_Aggregation",
            dependencies: ["OrderedCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "OrderedCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/OrderedCollections-894017a11d4e7ebf37bcc9f890d63ce3571e7ce8b0b44e838e5a0b9a73547bcb.xcframework.zip",
            checksum: "894017a11d4e7ebf37bcc9f890d63ce3571e7ce8b0b44e838e5a0b9a73547bcb"
        ),
        .target(
            name: "_RopeModule_Aggregation",
            dependencies: ["_RopeModule", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "_RopeModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/_RopeModule-d1cbd070fd3b3332797f181bced61aa9acf488dbfad18a453f3061573fedd67e.xcframework.zip",
            checksum: "d1cbd070fd3b3332797f181bced61aa9acf488dbfad18a453f3061573fedd67e"
        ),
        .target(
            name: "TrailingElementsModule_Aggregation",
            dependencies: ["TrailingElementsModule"]
        ),
        .binaryTarget(
            name: "TrailingElementsModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/TrailingElementsModule-d4f3fefd3bb47d0cd2685d794bd39fbfbba0d9ff7494ae36b20fc8d9f52770e9.xcframework.zip",
            checksum: "d4f3fefd3bb47d0cd2685d794bd39fbfbba0d9ff7494ae36b20fc8d9f52770e9"
        ),
        .target(
            name: "SortedCollections_Aggregation",
            dependencies: ["SortedCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "SortedCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/SortedCollections-6a6d1d5dca3d9505e11452a86f7994d5ec1b30df41a290dc19aefaa754bc590e.xcframework.zip",
            checksum: "6a6d1d5dca3d9505e11452a86f7994d5ec1b30df41a290dc19aefaa754bc590e"
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/Collections-428e9bb27e3119c36e77e90f730f5b51057474829850b418a3e30b981ab1f25e.xcframework.zip",
            checksum: "428e9bb27e3119c36e77e90f730f5b51057474829850b418a3e30b981ab1f25e"
        )
    ]
)