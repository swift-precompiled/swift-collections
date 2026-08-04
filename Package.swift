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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/InternalCollectionsUtilities-93cb228fdd0fd70fecca4cd40c8bdfc88ed2b4e9a80f65e4b78a0ff03ab30430.xcframework.zip",
            checksum: "93cb228fdd0fd70fecca4cd40c8bdfc88ed2b4e9a80f65e4b78a0ff03ab30430"
        ),
        .target(
            name: "BasicContainers_Aggregation",
            dependencies: ["BasicContainers"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "BasicContainers",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/BasicContainers-d2e73730b2052f99547983002cfcd671229680009b9c72584092efdeac876b9a.xcframework.zip",
            checksum: "d2e73730b2052f99547983002cfcd671229680009b9c72584092efdeac876b9a"
        ),
        .target(
            name: "BitCollections_Aggregation",
            dependencies: ["BitCollections"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "BitCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/BitCollections-09343a9be1c01104ff5204dbc82a53e52e9c19dc195969be5a1faea1ffc8af32.xcframework.zip",
            checksum: "09343a9be1c01104ff5204dbc82a53e52e9c19dc195969be5a1faea1ffc8af32"
        ),
        .target(
            name: "ContainersPreview_Aggregation",
            dependencies: ["ContainersPreview"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "ContainersPreview",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/ContainersPreview-138a05eaa6ceb0d8a9c08e77611d556755246375ab2348bf950883b8258732fd.xcframework.zip",
            checksum: "138a05eaa6ceb0d8a9c08e77611d556755246375ab2348bf950883b8258732fd"
        ),
        .target(
            name: "DequeModule_Aggregation",
            dependencies: ["DequeModule"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "DequeModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/DequeModule-3104173ef0fa870a0580508f95f32137f7467b516bf0df49f5b9ce7160c26b5f.xcframework.zip",
            checksum: "3104173ef0fa870a0580508f95f32137f7467b516bf0df49f5b9ce7160c26b5f"
        ),
        .target(
            name: "HashTreeCollections_Aggregation",
            dependencies: ["HashTreeCollections"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "HashTreeCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/HashTreeCollections-28b3057009a276bf2b96c115d967b8a8188d21ec887a4b4076be8f8166aa317f.xcframework.zip",
            checksum: "28b3057009a276bf2b96c115d967b8a8188d21ec887a4b4076be8f8166aa317f"
        ),
        .target(
            name: "HeapModule_Aggregation",
            dependencies: ["HeapModule"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "HeapModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/HeapModule-5b761f256b9952415c823f8c133b5386b4dcc0017b2189551a1da8a0b544c5ec.xcframework.zip",
            checksum: "5b761f256b9952415c823f8c133b5386b4dcc0017b2189551a1da8a0b544c5ec"
        ),
        .target(
            name: "OrderedCollections_Aggregation",
            dependencies: ["OrderedCollections"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "OrderedCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/OrderedCollections-c0cc6d3a2b94bfd29db64997e4193024ce6dda01563c6834e37be00e85586b7b.xcframework.zip",
            checksum: "c0cc6d3a2b94bfd29db64997e4193024ce6dda01563c6834e37be00e85586b7b"
        ),
        .target(
            name: "_RopeModule_Aggregation",
            dependencies: ["_RopeModule"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_RopeModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/_RopeModule-88629b179a9f73ef37993f69bbc33e0abc4b1304455ab2397f414d6b1ce79973.xcframework.zip",
            checksum: "88629b179a9f73ef37993f69bbc33e0abc4b1304455ab2397f414d6b1ce79973"
        ),
        .target(
            name: "TrailingElementsModule_Aggregation",
            dependencies: ["TrailingElementsModule"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "TrailingElementsModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/TrailingElementsModule-cbbbacae2db3d94666961733758a529b1d4b498ddfc575e50657e809fa39f8c9.xcframework.zip",
            checksum: "cbbbacae2db3d94666961733758a529b1d4b498ddfc575e50657e809fa39f8c9"
        ),
        .target(
            name: "SortedCollections_Aggregation",
            dependencies: ["SortedCollections"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SortedCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/SortedCollections-9dc7946db0418cb489ee54e542ede242b65e50ba8c2574a2a316ba5e614c3fb8.xcframework.zip",
            checksum: "9dc7946db0418cb489ee54e542ede242b65e50ba8c2574a2a316ba5e614c3fb8"
        ),
        .target(
            name: "Collections_Aggregation",
            dependencies: ["Collections"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Collections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/Collections-8867aa9c4f1436f8e719692f331c50665dac09bcd7fb7ef241a9a511ae7fc411.xcframework.zip",
            checksum: "8867aa9c4f1436f8e719692f331c50665dac09bcd7fb7ef241a9a511ae7fc411"
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