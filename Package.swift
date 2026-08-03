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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/InternalCollectionsUtilities-9c5f13d6ce36c6751d173e4e18fdcc0b460ee2bf5531772cc62a41677d8318ae.xcframework.zip",
            checksum: "9c5f13d6ce36c6751d173e4e18fdcc0b460ee2bf5531772cc62a41677d8318ae"
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/BasicContainers-7e2fbae6562dcd4a801dcae407034b937fa9d53f3fec09608dcf194b93b864b3.xcframework.zip",
            checksum: "7e2fbae6562dcd4a801dcae407034b937fa9d53f3fec09608dcf194b93b864b3"
        ),
        .target(
            name: "BitCollections_Aggregation",
            dependencies: ["BitCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "BitCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/BitCollections-78b26a4426885b77ce6bfb49e1bb4bab0d2873e5caf6e50ee07f4f1b56843429.xcframework.zip",
            checksum: "78b26a4426885b77ce6bfb49e1bb4bab0d2873e5caf6e50ee07f4f1b56843429"
        ),
        .target(
            name: "ContainersPreview_Aggregation",
            dependencies: ["ContainersPreview", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "ContainersPreview",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/ContainersPreview-ad5258a8800276b088785baa7236f71dc217340110ab3ddc7d87bb85db5134a7.xcframework.zip",
            checksum: "ad5258a8800276b088785baa7236f71dc217340110ab3ddc7d87bb85db5134a7"
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/DequeModule-3f32e7d33ae11a81ab5805a6b4f8f5e1e9bf2a350d43595d451a74793ff12d0a.xcframework.zip",
            checksum: "3f32e7d33ae11a81ab5805a6b4f8f5e1e9bf2a350d43595d451a74793ff12d0a"
        ),
        .target(
            name: "HashTreeCollections_Aggregation",
            dependencies: ["HashTreeCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HashTreeCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/HashTreeCollections-682829944c0cdefd33ce1e7c8296276ee99269295d4c22197308ff9403f4e17d.xcframework.zip",
            checksum: "682829944c0cdefd33ce1e7c8296276ee99269295d4c22197308ff9403f4e17d"
        ),
        .target(
            name: "HeapModule_Aggregation",
            dependencies: ["HeapModule", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HeapModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/HeapModule-9875ea0ddec694720ab2221d35637086fd548ba10996350f4f87bf0c1b31fe7c.xcframework.zip",
            checksum: "9875ea0ddec694720ab2221d35637086fd548ba10996350f4f87bf0c1b31fe7c"
        ),
        .target(
            name: "OrderedCollections_Aggregation",
            dependencies: ["OrderedCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "OrderedCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/OrderedCollections-65bf34241ad519f2fbacb2b0bf679004c99917d8cbb0a91388242218c8118cd0.xcframework.zip",
            checksum: "65bf34241ad519f2fbacb2b0bf679004c99917d8cbb0a91388242218c8118cd0"
        ),
        .target(
            name: "_RopeModule_Aggregation",
            dependencies: ["_RopeModule", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "_RopeModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/_RopeModule-5a7b1ba08b344c01d249cf5d1b371aba0ba26e076c44fba44856c76cf611e3f1.xcframework.zip",
            checksum: "5a7b1ba08b344c01d249cf5d1b371aba0ba26e076c44fba44856c76cf611e3f1"
        ),
        .target(
            name: "TrailingElementsModule_Aggregation",
            dependencies: ["TrailingElementsModule"]
        ),
        .binaryTarget(
            name: "TrailingElementsModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/TrailingElementsModule-933701fa0a498726bb8f0361c3992ab02266104b98e18c6735058625925e0922.xcframework.zip",
            checksum: "933701fa0a498726bb8f0361c3992ab02266104b98e18c6735058625925e0922"
        ),
        .target(
            name: "SortedCollections_Aggregation",
            dependencies: ["SortedCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "SortedCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/SortedCollections-cf5ec565e4a1831581aeb37bfa04c6ccd8813d123437bb1c888696a6f477795b.xcframework.zip",
            checksum: "cf5ec565e4a1831581aeb37bfa04c6ccd8813d123437bb1c888696a6f477795b"
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/Collections-9d79bb313510c4064698a05e3050c919e16c724485e4649e9b6172a20b2189b6.xcframework.zip",
            checksum: "9d79bb313510c4064698a05e3050c919e16c724485e4649e9b6172a20b2189b6"
        )
    ]
)