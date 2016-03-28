import XCTest
import SwiftMD5

class SwiftMD5Tests: XCTestCase {
    func testMD5() {
        XCTAssertEqual("The quick brown fox jumps over the lazy dog".md5, "9e107d9d372bb6826bd81d3542a419d6")
        
        XCTAssertEqual("The quick brown fox jumps over the lazy dog.".md5, "e4d909c290d0fb1ca068ffaddf22cbd0")
        
        XCTAssertEqual("".md5, "d41d8cd98f00b204e9800998ecf8427e")
        
        XCTAssertEqual("md5".md5, "1bc29b36f623ba82aaf6724fd3b16718")
    }
}
