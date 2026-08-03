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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0-precompiled.1/InternalCollectionsUtilities-d7d51a50d408b53e5a45730b5aa4095ace109710ff24b122591bec1b2add1d30.xcframework.zip",
            checksum: "d7d51a50d408b53e5a45730b5aa4095ace109710ff24b122591bec1b2add1d30"
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0-precompiled.1/BasicContainers-97497510ebaaf9d9b2b711a80a89fb22cbd14b374d4a80f630d0891197f689b4.xcframework.zip",
            checksum: "97497510ebaaf9d9b2b711a80a89fb22cbd14b374d4a80f630d0891197f689b4"
        ),
        .target(
            name: "BitCollections_Aggregation",
            dependencies: ["BitCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "BitCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0-precompiled.1/BitCollections-dc0491a4e52ab32c2498ca7c3890c9b9533f7780a50bff712e071738d83d45ff.xcframework.zip",
            checksum: "dc0491a4e52ab32c2498ca7c3890c9b9533f7780a50bff712e071738d83d45ff"
        ),
        .target(
            name: "ContainersPreview_Aggregation",
            dependencies: ["ContainersPreview", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "ContainersPreview",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0-precompiled.1/ContainersPreview-5c6f6e5885c06dc8b14e56b00ca0e3aa3972f03bf520e3688109b1255a31a420.xcframework.zip",
            checksum: "5c6f6e5885c06dc8b14e56b00ca0e3aa3972f03bf520e3688109b1255a31a420"
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0-precompiled.1/DequeModule-cc79216dca69aeaa4273929a2c862b37dccb6ba97b4b67e3f0f40fc6912067aa.xcframework.zip",
            checksum: "cc79216dca69aeaa4273929a2c862b37dccb6ba97b4b67e3f0f40fc6912067aa"
        ),
        .target(
            name: "HashTreeCollections_Aggregation",
            dependencies: ["HashTreeCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HashTreeCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0-precompiled.1/HashTreeCollections-f8527c44cf9fdbf13cda8638ef899ed661a248ea3f706cd62d2f4c27f4a978ba.xcframework.zip",
            checksum: "f8527c44cf9fdbf13cda8638ef899ed661a248ea3f706cd62d2f4c27f4a978ba"
        ),
        .target(
            name: "HeapModule_Aggregation",
            dependencies: ["HeapModule", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HeapModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0-precompiled.1/HeapModule-45937ea87d1a951d1c20c7c388935187a322ba450d16fd70c80d717aa5d9acca.xcframework.zip",
            checksum: "45937ea87d1a951d1c20c7c388935187a322ba450d16fd70c80d717aa5d9acca"
        ),
        .target(
            name: "OrderedCollections_Aggregation",
            dependencies: ["OrderedCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "OrderedCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0-precompiled.1/OrderedCollections-4dd9136495f8434af6c3c53b347eb65a3bddbee3ebd32b2e01e629951a133420.xcframework.zip",
            checksum: "4dd9136495f8434af6c3c53b347eb65a3bddbee3ebd32b2e01e629951a133420"
        ),
        .target(
            name: "_RopeModule_Aggregation",
            dependencies: ["_RopeModule", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "_RopeModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0-precompiled.1/_RopeModule-0bd1224fd4b182efe8c83fb2656809f707a473814341e92220a310695d68d557.xcframework.zip",
            checksum: "0bd1224fd4b182efe8c83fb2656809f707a473814341e92220a310695d68d557"
        ),
        .target(
            name: "TrailingElementsModule_Aggregation",
            dependencies: ["TrailingElementsModule"]
        ),
        .binaryTarget(
            name: "TrailingElementsModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0-precompiled.1/TrailingElementsModule-b3b0a847a5c499451104e82dbee8661b1f12a602f48194899ddc078371bfcc29.xcframework.zip",
            checksum: "b3b0a847a5c499451104e82dbee8661b1f12a602f48194899ddc078371bfcc29"
        ),
        .target(
            name: "SortedCollections_Aggregation",
            dependencies: ["SortedCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "SortedCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0-precompiled.1/SortedCollections-072585ef1e7e36e3257354a111ff12147bdcd037908af61752480264cec8fe8e.xcframework.zip",
            checksum: "072585ef1e7e36e3257354a111ff12147bdcd037908af61752480264cec8fe8e"
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0-precompiled.1/Collections-22498091b70f0c14d789e41c043c339adc281a17f50672ff2a2fda7928612f8f.xcframework.zip",
            checksum: "22498091b70f0c14d789e41c043c339adc281a17f50672ff2a2fda7928612f8f"
        )
    ]
)