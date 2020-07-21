import XCTest
@testable import CodableUtils

final class CodableUtilsTests: XCTestCase {

    func testClassName(){
        let typeN = Test.className
        XCTAssertEqual("\(typeN)", "test")
    }

    static var allTests = [
        ("testPathname", testClassName),
    ]
}

struct Test: Codable {
    var name: String?
    var age: Int?
}
