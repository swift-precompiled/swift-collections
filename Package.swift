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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/InternalCollectionsUtilities-15b98ea437a80dde324596df6c1ba533edd533f61f589060d1ca23c3c180408f.xcframework.zip",
            checksum: "15b98ea437a80dde324596df6c1ba533edd533f61f589060d1ca23c3c180408f"
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/BasicContainers-03b83b8ca0a8179f77a30afa9b28a8a872c14c2ac5226d6a476615bc89348df7.xcframework.zip",
            checksum: "03b83b8ca0a8179f77a30afa9b28a8a872c14c2ac5226d6a476615bc89348df7"
        ),
        .target(
            name: "BitCollections_Aggregation",
            dependencies: ["BitCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "BitCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/BitCollections-933c2b58b2c0184477de1dbc7b766aba1696bcfcfd737bf9306a3e2b5e2593bf.xcframework.zip",
            checksum: "933c2b58b2c0184477de1dbc7b766aba1696bcfcfd737bf9306a3e2b5e2593bf"
        ),
        .target(
            name: "ContainersPreview_Aggregation",
            dependencies: ["ContainersPreview", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "ContainersPreview",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/ContainersPreview-a6292c05e320eb6eddf1169ed49ea90539af4112d7a5d5889990801261b8cb77.xcframework.zip",
            checksum: "a6292c05e320eb6eddf1169ed49ea90539af4112d7a5d5889990801261b8cb77"
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/DequeModule-15415886a0c58998d7a215ceff58bc1677330aa4c575004555ab3ca3ce3fc48a.xcframework.zip",
            checksum: "15415886a0c58998d7a215ceff58bc1677330aa4c575004555ab3ca3ce3fc48a"
        ),
        .target(
            name: "HashTreeCollections_Aggregation",
            dependencies: ["HashTreeCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HashTreeCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/HashTreeCollections-4bab227a2e6586b77075af3d50561d38276fdef30871e9001ca5e707c795c863.xcframework.zip",
            checksum: "4bab227a2e6586b77075af3d50561d38276fdef30871e9001ca5e707c795c863"
        ),
        .target(
            name: "HeapModule_Aggregation",
            dependencies: ["HeapModule", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HeapModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/HeapModule-33fdf1b58442cf70071891301dd787ae5e790da978da020a4ef1319d0e874ce2.xcframework.zip",
            checksum: "33fdf1b58442cf70071891301dd787ae5e790da978da020a4ef1319d0e874ce2"
        ),
        .target(
            name: "OrderedCollections_Aggregation",
            dependencies: ["OrderedCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "OrderedCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/OrderedCollections-702c3f31065fa7e2ba1104df3edec4c495fa115519be8bf29f4c2d5cd7de9058.xcframework.zip",
            checksum: "702c3f31065fa7e2ba1104df3edec4c495fa115519be8bf29f4c2d5cd7de9058"
        ),
        .target(
            name: "_RopeModule_Aggregation",
            dependencies: ["_RopeModule", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "_RopeModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/_RopeModule-c9e84b98e19ffdf6d50c25f7dd226b556af214ea36460be1543ae4a14316aeed.xcframework.zip",
            checksum: "c9e84b98e19ffdf6d50c25f7dd226b556af214ea36460be1543ae4a14316aeed"
        ),
        .target(
            name: "TrailingElementsModule_Aggregation",
            dependencies: ["TrailingElementsModule"]
        ),
        .binaryTarget(
            name: "TrailingElementsModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/TrailingElementsModule-4684d55e8de73ecbdb19130230dfe0aae9d4e36611bd2270d5ca8586b5068fac.xcframework.zip",
            checksum: "4684d55e8de73ecbdb19130230dfe0aae9d4e36611bd2270d5ca8586b5068fac"
        ),
        .target(
            name: "SortedCollections_Aggregation",
            dependencies: ["SortedCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "SortedCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/SortedCollections-6de55aec93a5224e4a7e86cacc8922807aee6cfb07b96beb913dc1e679392b5a.xcframework.zip",
            checksum: "6de55aec93a5224e4a7e86cacc8922807aee6cfb07b96beb913dc1e679392b5a"
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/Collections-66bbfb228ba38dbbf6db50f9904c37ea0704b5753be46fbb33b80001eba6884f.xcframework.zip",
            checksum: "66bbfb228ba38dbbf6db50f9904c37ea0704b5753be46fbb33b80001eba6884f"
        )
    ]
)