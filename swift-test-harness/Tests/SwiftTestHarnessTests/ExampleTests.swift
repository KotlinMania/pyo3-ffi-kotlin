#if canImport(Testing)
import Testing
import Pyo3Ffi

@Suite("Pyo3Ffi Swift Export Tests")
struct Pyo3FfiExportTests {
    @Test("Pyo3Ffi swift module imported cleanly")
    func testSwiftModuleLoads() throws {
        #expect(Bool(true), "Pyo3Ffi swift module imported cleanly")
    }
}
#elseif canImport(XCTest)
import XCTest
import Pyo3Ffi

final class Pyo3FfiExportTests: XCTestCase {
    func testSwiftModuleLoads() throws {
        XCTAssertTrue(true, "Pyo3Ffi swift module imported cleanly")
    }
}
#endif
