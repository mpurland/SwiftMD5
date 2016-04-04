import XCTest
import SwiftMD5

class SwiftMD5Tests: XCTestCase {
    func testMD5() {
        XCTAssertEqual("The quick brown fox jumps over the lazy dog".md5, "9e107d9d372bb6826bd81d3542a419d6")
        XCTAssertEqual("The quick brown fox jumps over the lazy dog.".md5, "e4d909c290d0fb1ca068ffaddf22cbd0")
        XCTAssertEqual("".md5, "d41d8cd98f00b204e9800998ecf8427e")
        XCTAssertEqual("md5".md5, "1bc29b36f623ba82aaf6724fd3b16718")
        XCTAssertEqual("abc".md5, "900150983cd24fb0d6963f7d28e17f72")
    }
    
    func testMD5Checksum() {
        let strings = [
            "The quick brown fox jumps over the lazy dog",
            "The quick brown fox jumps over the lazy dog.",
            "",
            "md5",
            "abc"
        ]
        
        for str in strings {
            let bytes = [Byte](str.utf8)
            XCTAssertEqual(str.md5, md5(bytes).checksum)
        }
    }
    
    func testEncodeMD5Digest() {
        XCTAssertEqual("The quick brown fox jumps over the lazy dog".md5, encodeMD5Digest([158, 16, 125, 157, 55, 43, 182, 130, 107, 216, 29, 53, 66, 164, 25, 214]))
        XCTAssertEqual("The quick brown fox jumps over the lazy dog.".md5, encodeMD5Digest([228, 217, 9, 194, 144, 208, 251, 28, 160, 104, 255, 173, 223, 34, 203, 208]))
        XCTAssertEqual("".md5, encodeMD5Digest([212, 29, 140, 217, 143, 0, 178, 4, 233, 128, 9, 152, 236, 248, 66, 126]))
        XCTAssertEqual("md5".md5, encodeMD5Digest([27, 194, 155, 54, 246, 35, 186, 130, 170, 246, 114, 79, 211, 177, 103, 24]))
        XCTAssertEqual("abc".md5, encodeMD5Digest([144, 1, 80, 152, 60, 210, 79, 176, 214, 150, 63, 125, 40, 225, 127, 114]))
    }
    
    func testMD5Digest() {
        XCTAssertEqual("The quick brown fox jumps over the lazy dog".md5Digest, [158, 16, 125, 157, 55, 43, 182, 130, 107, 216, 29, 53, 66, 164, 25, 214])
        XCTAssertEqual("The quick brown fox jumps over the lazy dog.".md5Digest, [228, 217, 9, 194, 144, 208, 251, 28, 160, 104, 255, 173, 223, 34, 203, 208])
        XCTAssertEqual("".md5Digest, [212, 29, 140, 217, 143, 0, 178, 4, 233, 128, 9, 152, 236, 248, 66, 126])
        XCTAssertEqual("md5".md5Digest, [27, 194, 155, 54, 246, 35, 186, 130, 170, 246, 114, 79, 211, 177, 103, 24])
        XCTAssertEqual("abc".md5Digest, [144, 1, 80, 152, 60, 210, 79, 176, 214, 150, 63, 125, 40, 225, 127, 114])
    }
}
