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
            name: "BasicContainers_Static",
            targets: ["BasicContainers_Static_Aggregation"]
        ),
        .library(
            name: "BitCollections",
            targets: ["BitCollections_Aggregation"]
        ),
        .library(
            name: "BitCollections_Static",
            targets: ["BitCollections_Static_Aggregation"]
        ),
        .library(
            name: "ContainersPreview",
            targets: ["ContainersPreview_Aggregation"]
        ),
        .library(
            name: "ContainersPreview_Static",
            targets: ["ContainersPreview_Static_Aggregation"]
        ),
        .library(
            name: "DequeModule",
            targets: ["DequeModule_Aggregation"]
        ),
        .library(
            name: "DequeModule_Static",
            targets: ["DequeModule_Static_Aggregation"]
        ),
        .library(
            name: "HashTreeCollections",
            targets: ["HashTreeCollections_Aggregation"]
        ),
        .library(
            name: "HashTreeCollections_Static",
            targets: ["HashTreeCollections_Static_Aggregation"]
        ),
        .library(
            name: "HeapModule",
            targets: ["HeapModule_Aggregation"]
        ),
        .library(
            name: "HeapModule_Static",
            targets: ["HeapModule_Static_Aggregation"]
        ),
        .library(
            name: "OrderedCollections",
            targets: ["OrderedCollections_Aggregation"]
        ),
        .library(
            name: "OrderedCollections_Static",
            targets: ["OrderedCollections_Static_Aggregation"]
        ),
        .library(
            name: "_RopeModule",
            targets: ["_RopeModule_Aggregation"]
        ),
        .library(
            name: "_RopeModule_Static",
            targets: ["_RopeModule_Static_Aggregation"]
        ),
        .library(
            name: "TrailingElementsModule",
            targets: ["TrailingElementsModule_Aggregation"]
        ),
        .library(
            name: "TrailingElementsModule_Static",
            targets: ["TrailingElementsModule_Static_Aggregation"]
        ),
        .library(
            name: "SortedCollections",
            targets: ["SortedCollections_Aggregation"]
        ),
        .library(
            name: "SortedCollections_Static",
            targets: ["SortedCollections_Static_Aggregation"]
        ),
        .library(
            name: "Collections",
            targets: ["Collections_Aggregation"]
        ),
        .library(
            name: "Collections_Static",
            targets: ["Collections_Static_Aggregation"]
        )
    ],
    targets: [
        .target(
            name: "InternalCollectionsUtilities_Aggregation",
            dependencies: ["InternalCollectionsUtilities"]
        ),
        .binaryTarget(
            name: "InternalCollectionsUtilities",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.1/InternalCollectionsUtilities.xcframework.zip",
            checksum: "5dbc22fda0c80e704a057bddd4f9007b3d04e1351ca988650f17418405c5f7e9"
        ),
        .target(
            name: "InternalCollectionsUtilities_Static_Aggregation",
            dependencies: ["InternalCollectionsUtilities_Static"]
        ),
        .binaryTarget(
            name: "InternalCollectionsUtilities_Static",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.1/InternalCollectionsUtilities_Static.xcframework.zip",
            checksum: "7d7807d634cacd6eddc2e299358ffd5fb1990c760cb7f83db343d05e88dac9d0"
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.1/BasicContainers.xcframework.zip",
            checksum: "4abbe041ab5f804019ae4e7e3e7c6f675aaf8b9f1882b047b66ddfb19ba07d48"
        ),
        .target(
            name: "BasicContainers_Static_Aggregation",
            dependencies: [
                "BasicContainers_Static",
                "InternalCollectionsUtilities_Static_Aggregation",
                "ContainersPreview_Static_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "BasicContainers_Static",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.1/BasicContainers_Static.xcframework.zip",
            checksum: "0a1f7980d5d93edd401a6b13dfdc9fa9572d6cb49a97652ca7f577989affe821"
        ),
        .target(
            name: "BitCollections_Aggregation",
            dependencies: ["BitCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "BitCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.1/BitCollections.xcframework.zip",
            checksum: "2a111d8f7daa33319605c0fc2d26ac29e1a778d97ea5adab90c9f2ccfdd3c9a7"
        ),
        .target(
            name: "BitCollections_Static_Aggregation",
            dependencies: ["BitCollections_Static", "InternalCollectionsUtilities_Static_Aggregation"]
        ),
        .binaryTarget(
            name: "BitCollections_Static",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.1/BitCollections_Static.xcframework.zip",
            checksum: "9c5f38881cc5b6b2baf75d850178f0702c2b41bd09a0cb07cb5e026a8da1756b"
        ),
        .target(
            name: "ContainersPreview_Aggregation",
            dependencies: ["ContainersPreview", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "ContainersPreview",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.1/ContainersPreview.xcframework.zip",
            checksum: "d3c77bb71466e4fcb810341256b52240bc75afa8b669f68a93f7a1a87ccd20ca"
        ),
        .target(
            name: "ContainersPreview_Static_Aggregation",
            dependencies: ["ContainersPreview_Static", "InternalCollectionsUtilities_Static_Aggregation"]
        ),
        .binaryTarget(
            name: "ContainersPreview_Static",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.1/ContainersPreview_Static.xcframework.zip",
            checksum: "a0aa80a3ce993aa7e0cc9cb317e62ec1a5388b77ea25052f69a6fa76fe3b2f28"
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.1/DequeModule.xcframework.zip",
            checksum: "6abf4f1a172a8d8558eb13c66366bd961cbf97ecdbdebf1845c7866286989436"
        ),
        .target(
            name: "DequeModule_Static_Aggregation",
            dependencies: [
                "DequeModule_Static",
                "ContainersPreview_Static_Aggregation",
                "InternalCollectionsUtilities_Static_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "DequeModule_Static",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.1/DequeModule_Static.xcframework.zip",
            checksum: "8927256d627b474fc43b3dd11e479a969c55bd3e1a025fd96061136ce6196abd"
        ),
        .target(
            name: "HashTreeCollections_Aggregation",
            dependencies: ["HashTreeCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HashTreeCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.1/HashTreeCollections.xcframework.zip",
            checksum: "cf1ed840a797e54e3ae3364d6f76efc22a19d6762b67274fa3e2d45cdc338ddb"
        ),
        .target(
            name: "HashTreeCollections_Static_Aggregation",
            dependencies: ["HashTreeCollections_Static", "InternalCollectionsUtilities_Static_Aggregation"]
        ),
        .binaryTarget(
            name: "HashTreeCollections_Static",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.1/HashTreeCollections_Static.xcframework.zip",
            checksum: "32abe8903b7a552644a0cd57716ded9b5d8cef59980d7e4b90bd4e0835ca5e77"
        ),
        .target(
            name: "HeapModule_Aggregation",
            dependencies: ["HeapModule", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HeapModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.1/HeapModule.xcframework.zip",
            checksum: "a786302af1c52ee361776b6d0f2f7499a4177d43b1f80b8e1b1aa7ab77ba450c"
        ),
        .target(
            name: "HeapModule_Static_Aggregation",
            dependencies: ["HeapModule_Static", "InternalCollectionsUtilities_Static_Aggregation"]
        ),
        .binaryTarget(
            name: "HeapModule_Static",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.1/HeapModule_Static.xcframework.zip",
            checksum: "f57f4e2eaba0319921dd5f246f4e79fe37d692cd848576203c6a1e57ed93ec0b"
        ),
        .target(
            name: "OrderedCollections_Aggregation",
            dependencies: ["OrderedCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "OrderedCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.1/OrderedCollections.xcframework.zip",
            checksum: "ce31458efd34752653cfb66b7e002baf10ca296283cb5527a5dbd22f8c3d7062"
        ),
        .target(
            name: "OrderedCollections_Static_Aggregation",
            dependencies: ["OrderedCollections_Static", "InternalCollectionsUtilities_Static_Aggregation"]
        ),
        .binaryTarget(
            name: "OrderedCollections_Static",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.1/OrderedCollections_Static.xcframework.zip",
            checksum: "0da649ab3812e1c2ba64f501c65afb6397707deede6d6a35502534485d8045e1"
        ),
        .target(
            name: "_RopeModule_Aggregation",
            dependencies: ["_RopeModule", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "_RopeModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.1/_RopeModule.xcframework.zip",
            checksum: "c27535c6365171b636530a19e690efb251c60ae845ae5e0dc46e1df20c9c6cb2"
        ),
        .target(
            name: "_RopeModule_Static_Aggregation",
            dependencies: ["_RopeModule_Static", "InternalCollectionsUtilities_Static_Aggregation"]
        ),
        .binaryTarget(
            name: "_RopeModule_Static",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.1/_RopeModule_Static.xcframework.zip",
            checksum: "39e1d13f3e9fc3a406be2e6c6b6957d11a4421e5aaab5479972b7b4dd1c3700a"
        ),
        .target(
            name: "TrailingElementsModule_Aggregation",
            dependencies: ["TrailingElementsModule"]
        ),
        .binaryTarget(
            name: "TrailingElementsModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.1/TrailingElementsModule.xcframework.zip",
            checksum: "241ecc67bf9537804e76861f756dd0245e3ff6df906c952a0937508225514e0e"
        ),
        .target(
            name: "TrailingElementsModule_Static_Aggregation",
            dependencies: ["TrailingElementsModule_Static"]
        ),
        .binaryTarget(
            name: "TrailingElementsModule_Static",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.1/TrailingElementsModule_Static.xcframework.zip",
            checksum: "a34c6f7565f2fb9be7b747bcd1bf0c0929213f5d8200c298ae84abbdaa2a108b"
        ),
        .target(
            name: "SortedCollections_Aggregation",
            dependencies: ["SortedCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "SortedCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.1/SortedCollections.xcframework.zip",
            checksum: "23495d42bcc81bc947358d8c29fb2b38feddf3dbbc25eac5152cbf226b72dfd7"
        ),
        .target(
            name: "SortedCollections_Static_Aggregation",
            dependencies: ["SortedCollections_Static", "InternalCollectionsUtilities_Static_Aggregation"]
        ),
        .binaryTarget(
            name: "SortedCollections_Static",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.1/SortedCollections_Static.xcframework.zip",
            checksum: "bd4ccef6b4eb1ec29da81cccb0a7623da107906fbfdd2561f1f3de3aed891d35"
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.1/Collections.xcframework.zip",
            checksum: "b9175271e0ef2bece788027a7395320fd575e9c3a0d7564303c942675f49cddc"
        ),
        .target(
            name: "Collections_Static_Aggregation",
            dependencies: [
                "Collections_Static",
                "BitCollections_Static_Aggregation",
                "DequeModule_Static_Aggregation",
                "HashTreeCollections_Static_Aggregation",
                "HeapModule_Static_Aggregation",
                "OrderedCollections_Static_Aggregation",
                "_RopeModule_Static_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "Collections_Static",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.1/Collections_Static.xcframework.zip",
            checksum: "23066f3613252113b849474773efcab9fab3d747452b6012105b06f4b74df8d1"
        )
    ]
)