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
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/221727578.zip",
            checksum: "ffb2545985ee0f6b23965f958e71781a00f36b44dcd4dfaeda0d4b4053eb7625"
        ),
        .target(
            name: "DequeModule_Aggregation",
            dependencies: [.target(name: "DequeModule"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "DequeModule",
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/221727580.zip",
            checksum: "d7c593908abe2e75b53167c6dc1f32488f15fcfa6fabbd588cb2f3e36f138cda"
        ),
        .target(
            name: "HashTreeCollections_Aggregation",
            dependencies: [.target(name: "HashTreeCollections"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HashTreeCollections",
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/221727582.zip",
            checksum: "a7def94f86930b942e961efd30c06753d4f43d61b7080ede85b06dab42d12e3a"
        ),
        .target(
            name: "HeapModule_Aggregation",
            dependencies: [.target(name: "HeapModule"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HeapModule",
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/221727583.zip",
            checksum: "7172445efb8bfd0603f3c40947095edba1ad506a8c6995acc0da81e7a6ea0ec1"
        ),
        .target(
            name: "OrderedCollections_Aggregation",
            dependencies: [.target(name: "OrderedCollections"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "OrderedCollections",
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/221727596.zip",
            checksum: "8a687f5863261ffbd0a68a0f436c7ab34777c16ef490c9e49d4e3602b4ef59d9"
        ),
        .target(
            name: "_RopeModule_Aggregation",
            dependencies: [.target(name: "_RopeModule"), "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "_RopeModule",
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/221727598.zip",
            checksum: "392bbed27be012e22cd78a440b7ef0b7770be1ba06f6524b6f597492295a9e88"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/221727599.zip",
            checksum: "789d1706cfd3679ee28e1f06b0b782306597d1ad05f1e3650c52f4b99da58bff"
        ),
        .target(
            name: "InternalCollectionsUtilities_Aggregation",
            dependencies: [.target(name: "InternalCollectionsUtilities")]
        ),
        .binaryTarget(
            name: "InternalCollectionsUtilities",
            url: "https://api.github.com/repos/swift-precompiled/swift-collections/releases/assets/221727600.zip",
            checksum: "14f444fcbf76926d6576201c96c36a0848eb967e4fc2bac961cd369140dc2f76"
        )
    ]
)