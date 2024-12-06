// swift-tools-version:5.7

import PackageDescription
import Foundation

let package = Package(
    name: "swift-collections",
    products: [
        .library(
            name: "BitCollections",
            targets: ["BitCollections_Aggregation"]
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
            name: "Collections",
            targets: ["Collections_Aggregation"]
        )
    ],
    targets: [
        .target(
            name: "BitCollections_Aggregation",
            dependencies: [.target(name: "BitCollections"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "BitCollections",
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/211456430.zip",
            checksum: "50f944a43de93879cab1a6fbe1676b783b2a11d2a0770e9f25810d83890c62cb"
        ),
        .target(
            name: "DequeModule_Aggregation",
            dependencies: [.target(name: "DequeModule"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "DequeModule",
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/211456434.zip",
            checksum: "183bd366781cd30eb5adc87bc26e9f76742108be2c216d26be5ba08985601e38"
        ),
        .target(
            name: "HashTreeCollections_Aggregation",
            dependencies: [.target(name: "HashTreeCollections"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HashTreeCollections",
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/211456448.zip",
            checksum: "e97f3acec959db903c64b611193b9742a8e6fdd485eaa87dc413d350f4453e6b"
        ),
        .target(
            name: "HeapModule_Aggregation",
            dependencies: [.target(name: "HeapModule"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HeapModule",
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/211456452.zip",
            checksum: "a782cc6046a70a3ec4692decb707481b0eef2789f8de9a99ebfa461de56edb52"
        ),
        .target(
            name: "OrderedCollections_Aggregation",
            dependencies: [.target(name: "OrderedCollections"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "OrderedCollections",
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/211456453.zip",
            checksum: "09aff19c37c006bbd8bb9b55fd0ea65e6905595ff7892f9affcb617630f894de"
        ),
        .target(
            name: "_RopeModule_Aggregation",
            dependencies: [.target(name: "_RopeModule"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "_RopeModule",
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/211456458.zip",
            checksum: "0323aa90daceee7d28aa5688190b6762c7e5842c6f1b87422e520ddece2bbd1b"
        ),
        .target(
            name: "Collections_Aggregation",
            dependencies: [
                .target(name: "Collections"),
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
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/211456461.zip",
            checksum: "bc0802f7d8d93263266e955a6272317465972d5fa81eece9c815b2077f19840a"
        ),
        .target(
            name: "InternalCollectionsUtilities_Aggregation",
            dependencies: [.target(name: "InternalCollectionsUtilities")]
        ),
        .binaryTarget(
            name: "InternalCollectionsUtilities",
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/211456464.zip",
            checksum: "2814edf93c96b04c39949081c79d21d9604174af1f358acc50f2db2f762aebac"
        )
    ]
)