extension String {
    public var md5: String? {
        let bytes = [Byte](self.utf8)
        let encodedBytes = SwiftMD5.md5(bytes)
        
        let str = encodedBytes.reduce("") { str, byte in
            let radix = 16
            let s = String(byte, radix: radix)
            // Ensure byte values less than 16 are padding with a leading 0
            let sum = str + (byte < Byte(radix) ? "0" : "") + s
            return sum
        }
        
        return str
    }
}
