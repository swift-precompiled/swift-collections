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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/InternalCollectionsUtilities-24e4848a45ed3409d366ee37ef693d924b276f63513a6918692aed6e1758579f.xcframework.zip",
            checksum: "24e4848a45ed3409d366ee37ef693d924b276f63513a6918692aed6e1758579f"
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/BasicContainers-0cf425c2343ba189067b0ebc98ddca54f0df009d1351714a47df5bf83536f02a.xcframework.zip",
            checksum: "0cf425c2343ba189067b0ebc98ddca54f0df009d1351714a47df5bf83536f02a"
        ),
        .target(
            name: "BitCollections_Aggregation",
            dependencies: ["BitCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "BitCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/BitCollections-7fb4870a35c865b20c189c7c4bccfbd0f0c1a59b1446d5ff0b4045e915cdf1b6.xcframework.zip",
            checksum: "7fb4870a35c865b20c189c7c4bccfbd0f0c1a59b1446d5ff0b4045e915cdf1b6"
        ),
        .target(
            name: "ContainersPreview_Aggregation",
            dependencies: ["ContainersPreview", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "ContainersPreview",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/ContainersPreview-c5e9608ec0a580276f7cd62d75b1ed82f4113ae4df9128f166b2831f3b61e6d9.xcframework.zip",
            checksum: "c5e9608ec0a580276f7cd62d75b1ed82f4113ae4df9128f166b2831f3b61e6d9"
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/DequeModule-c8d6617c4e9a2985ac648929a8c7f7ebecebb3c22de8558d0a3e7c507b8bd84d.xcframework.zip",
            checksum: "c8d6617c4e9a2985ac648929a8c7f7ebecebb3c22de8558d0a3e7c507b8bd84d"
        ),
        .target(
            name: "HashTreeCollections_Aggregation",
            dependencies: ["HashTreeCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HashTreeCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/HashTreeCollections-a03f947d7151af2333b7e48dfa1e3d660df64d22a5436c214647857223ba1685.xcframework.zip",
            checksum: "a03f947d7151af2333b7e48dfa1e3d660df64d22a5436c214647857223ba1685"
        ),
        .target(
            name: "HeapModule_Aggregation",
            dependencies: ["HeapModule", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "HeapModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/HeapModule-9117ad7ba7899ad31530090669066a7cae07b99e5163ad5042799d8a6558d3dc.xcframework.zip",
            checksum: "9117ad7ba7899ad31530090669066a7cae07b99e5163ad5042799d8a6558d3dc"
        ),
        .target(
            name: "OrderedCollections_Aggregation",
            dependencies: ["OrderedCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "OrderedCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/OrderedCollections-e497e0b3ea6bf922effffce51ceba8f035976fce0c0cc80793f992edd99331ec.xcframework.zip",
            checksum: "e497e0b3ea6bf922effffce51ceba8f035976fce0c0cc80793f992edd99331ec"
        ),
        .target(
            name: "_RopeModule_Aggregation",
            dependencies: ["_RopeModule", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "_RopeModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/_RopeModule-5e39cbd3e66956422bd41aac3810195228d5af84a29b654c2631073784e9d2e7.xcframework.zip",
            checksum: "5e39cbd3e66956422bd41aac3810195228d5af84a29b654c2631073784e9d2e7"
        ),
        .target(
            name: "TrailingElementsModule_Aggregation",
            dependencies: ["TrailingElementsModule"]
        ),
        .binaryTarget(
            name: "TrailingElementsModule",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/TrailingElementsModule-f501e72b83c245c408786a5900cacdaaa8e51f8a870764c321318f5c45db094e.xcframework.zip",
            checksum: "f501e72b83c245c408786a5900cacdaaa8e51f8a870764c321318f5c45db094e"
        ),
        .target(
            name: "SortedCollections_Aggregation",
            dependencies: ["SortedCollections", "InternalCollectionsUtilities_Aggregation"]
        ),
        .binaryTarget(
            name: "SortedCollections",
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/SortedCollections-fa35ad5a3bdfc22dc262d4a7f1eaa72f52cffb56da3051700439268f4357b712.xcframework.zip",
            checksum: "fa35ad5a3bdfc22dc262d4a7f1eaa72f52cffb56da3051700439268f4357b712"
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
            url: "https://github.com/swift-precompiled/swift-collections/releases/download/1.6.0/Collections-49175f3d6924efc573a6d42a5487342564099a7e030f1e1fe5dd049551723d6e.xcframework.zip",
            checksum: "49175f3d6924efc573a6d42a5487342564099a7e030f1e1fe5dd049551723d6e"
        )
    ]
)