import XCTest

@testable import Base58

final class ArrayWithUInt8Tests: XCTestCase {

    // used by BTCUtils code base as well as swift implementations
    let stringTests = [
        ("", ""),
        (" ", "Z"),
        ("-", "n"),
        ("0", "q"),
        ("1", "r"),
        ("-1", "4SU"),
        ("11", "4k8"),
        ("abc", "ZiCa"),
        ("1234598760", "3mJr7AoUXx2Wqd"),
        ("abcdefghijklmnopqrstuvwxyz", "3yxU3u1igY8WkgtjK92fbJQCd4BZiiT1v25f"),
        ("00000000000000000000000000000000000000000000000000000000000000", "3sN2THZeE9Eh9eYrwkvZqNstbHGvrxSAM7gXUXvyFQP8XvQLUqNCS27icwUeDT7ckHm4FUHM2mTVh1vbLmk7y")
    ]

    func testBase58EncodedString() {
        for (_, (input, output)) in stringTests.enumerated() {
            XCTAssertEqual([UInt8](input.utf8).base58EncodedString()!, output)
        }
    }

    static var allTests = [
        ("testBase58EncodedString", testBase58EncodedString),
    ]
}
