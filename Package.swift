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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.0/InternalCollectionsUtilities.xcframework.zip",
            checksum: "a26b3fa0551b5c2b46a542801866ecbd62c65ab0f4eb842c0ab57f4372647b0f"
        ),
        .target(
            name: "InternalCollectionsUtilities_Static_Aggregation",
            dependencies: ["InternalCollectionsUtilities_Static"]
        ),
        .binaryTarget(
            name: "InternalCollectionsUtilities_Static",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.0/InternalCollectionsUtilities_Static.xcframework.zip",
            checksum: "5f97de8578f0e64829bd4a7d5d8bd7849d39a3a1c6830274eb4f46a8c9abc5e5"
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.0/BasicContainers.xcframework.zip",
            checksum: "71233ee2cafb5c426153b356f56270bcdcb88ccb8dd8a1443395b5a017e54ece"
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.0/BasicContainers_Static.xcframework.zip",
            checksum: "dbfe6be5a7464871690fcbb3d41d842b5047a9d9e976ab1a87e60b314c16b4bd"
        ),
        .target(
            name: "BitCollections_Aggregation",
            dependencies: ["BitCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "BitCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.0/BitCollections.xcframework.zip",
            checksum: "e17828b823230b875f8f54e0dc47b35da45452ff19d75b9e57ee07b9eff9b99b"
        ),
        .target(
            name: "BitCollections_Static_Aggregation",
            dependencies: ["BitCollections_Static", "InternalCollectionsUtilities_Static_Aggregation"]
        ),
        .binaryTarget(
            name: "BitCollections_Static",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.0/BitCollections_Static.xcframework.zip",
            checksum: "546860968520b7682b6da00dc64956eba49aa5df759f56e4b826fc601b8dd706"
        ),
        .target(
            name: "ContainersPreview_Aggregation",
            dependencies: ["ContainersPreview", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "ContainersPreview",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.0/ContainersPreview.xcframework.zip",
            checksum: "c41ed60de7cdf5601b56546cc7c9f594c14877908fdedb0b6e085e4f4d93f25c"
        ),
        .target(
            name: "ContainersPreview_Static_Aggregation",
            dependencies: ["ContainersPreview_Static", "InternalCollectionsUtilities_Static_Aggregation"]
        ),
        .binaryTarget(
            name: "ContainersPreview_Static",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.0/ContainersPreview_Static.xcframework.zip",
            checksum: "6492d7929243599bd9c2d1676ad73060558110eba5c5cb04fc10c35344119a4c"
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.0/DequeModule.xcframework.zip",
            checksum: "70d28326d660fd5749418f1e05539d1749ba77b99576b51131ea9a30e6b22551"
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.0/DequeModule_Static.xcframework.zip",
            checksum: "1fb69342b2659733b8de031997a4b1c4baa0ca1d6f8bcffd7bdf1b3ae025d14f"
        ),
        .target(
            name: "HashTreeCollections_Aggregation",
            dependencies: ["HashTreeCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HashTreeCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.0/HashTreeCollections.xcframework.zip",
            checksum: "ef299ce5c4561d83d6d610423a13c2d4d87d5a9bcc46f1b096bb85003257d06d"
        ),
        .target(
            name: "HashTreeCollections_Static_Aggregation",
            dependencies: ["HashTreeCollections_Static", "InternalCollectionsUtilities_Static_Aggregation"]
        ),
        .binaryTarget(
            name: "HashTreeCollections_Static",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.0/HashTreeCollections_Static.xcframework.zip",
            checksum: "3ee138dec58fa748fb9a90709db5056ebb04ea1983b9126195174caf5ed8a9f7"
        ),
        .target(
            name: "HeapModule_Aggregation",
            dependencies: ["HeapModule", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HeapModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.0/HeapModule.xcframework.zip",
            checksum: "59e862a8c4c7346479b42d6ee7d5f0085e069e496356b85fbf67b5e883a83bc2"
        ),
        .target(
            name: "HeapModule_Static_Aggregation",
            dependencies: ["HeapModule_Static", "InternalCollectionsUtilities_Static_Aggregation"]
        ),
        .binaryTarget(
            name: "HeapModule_Static",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.0/HeapModule_Static.xcframework.zip",
            checksum: "5debe705f611ba27bdbf8f1cc71808eb0d317e50cdeaddd186d81caf00e3cee7"
        ),
        .target(
            name: "OrderedCollections_Aggregation",
            dependencies: ["OrderedCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "OrderedCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.0/OrderedCollections.xcframework.zip",
            checksum: "23f7ca25afcb2b75a53012425cf17896dbfd705e94022bc378ef93d75ca3c97b"
        ),
        .target(
            name: "OrderedCollections_Static_Aggregation",
            dependencies: ["OrderedCollections_Static", "InternalCollectionsUtilities_Static_Aggregation"]
        ),
        .binaryTarget(
            name: "OrderedCollections_Static",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.0/OrderedCollections_Static.xcframework.zip",
            checksum: "69fc484364b3c3a96bfec18cb1bd3bc1d209db190b7c7de7555da429b2561e52"
        ),
        .target(
            name: "_RopeModule_Aggregation",
            dependencies: ["_RopeModule", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "_RopeModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.0/_RopeModule.xcframework.zip",
            checksum: "647a2e6bed9a06ab8013e32517e3234b91253f639bd95f08398025abcc7d3cc1"
        ),
        .target(
            name: "_RopeModule_Static_Aggregation",
            dependencies: ["_RopeModule_Static", "InternalCollectionsUtilities_Static_Aggregation"]
        ),
        .binaryTarget(
            name: "_RopeModule_Static",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.0/_RopeModule_Static.xcframework.zip",
            checksum: "eff285309fb190f422b8fe9b88874b6388912d73c8227b29829b9afa192a3c5e"
        ),
        .target(
            name: "TrailingElementsModule_Aggregation",
            dependencies: ["TrailingElementsModule"]
        ),
        .binaryTarget(
            name: "TrailingElementsModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.0/TrailingElementsModule.xcframework.zip",
            checksum: "90de0897f569390d325ea8c660928a4efa69bf976d38c843c863d6660aba509a"
        ),
        .target(
            name: "TrailingElementsModule_Static_Aggregation",
            dependencies: ["TrailingElementsModule_Static"]
        ),
        .binaryTarget(
            name: "TrailingElementsModule_Static",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.0/TrailingElementsModule_Static.xcframework.zip",
            checksum: "f8f82989c3ad9b6a95331b8260f158075887c0676970ea71f3f3f5f66af9b66f"
        ),
        .target(
            name: "SortedCollections_Aggregation",
            dependencies: ["SortedCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "SortedCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.0/SortedCollections.xcframework.zip",
            checksum: "9827e615ee4e2cb79dd4ddbab80398ff4cefe5698f424bbee9d6f23bf632085c"
        ),
        .target(
            name: "SortedCollections_Static_Aggregation",
            dependencies: ["SortedCollections_Static", "InternalCollectionsUtilities_Static_Aggregation"]
        ),
        .binaryTarget(
            name: "SortedCollections_Static",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.0/SortedCollections_Static.xcframework.zip",
            checksum: "42d602ac5f4f5fa826b07d55b1cebfc9d2cdcb420598f537be258a8068ade808"
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.0/Collections.xcframework.zip",
            checksum: "60ddfe35b232f918b2f6c1a98b7e3647b683a8d660e85e13086545ee76dfd1ec"
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.4.0/Collections_Static.xcframework.zip",
            checksum: "a91efe71b3000be8098f32cea79798a8e7f628e49f9b35307f694cfc8b15c11e"
        )
    ]
)