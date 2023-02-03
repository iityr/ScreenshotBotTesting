import XCTest
import SnapshotTesting
import SwiftUI
@testable import ScreenshotBotTesting

final class FirstSnapshotTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
	
	override func setUp() {
		isFailOnNewRecording = false
	}
	
	override func tearDown() {
		// Not required, but good cleanup habbit
		isFailOnNewRecording = true
	}
	
	let widthScreen = 640.0
	let heightScreen = 1136.0
	
	let widthShape = 50.0
	let heightShape = 50.0
	let color: Color = .red
	
	let text = "First snapshot test!"
	
	func testSnapshotCircle() {
		let view = ContentView(
			view: Circle()
				.frame(width: widthShape, height: 50),
			text: self.text,
			color: self.color
		)
			.frame(width: widthScreen, height: heightScreen)
		
		assertSnapshot(
			matching: view,
			as: Snapshotting.image
		)
		
	}
	
	func testSnapshotRectangle() {
		let view = ContentView(
			view: Rectangle()
				.frame(width: widthShape, height: heightShape),
			text: self.text,
			color: self.color
		)
			.frame(width: widthScreen, height: heightScreen)
		
		assertSnapshot(
			matching: view,
			as: Snapshotting.image
		)
		
	}
	
	func testSnapshotCapsule() {
		let view = ContentView(
			view: Capsule()
				.frame(width: widthShape * 2, height: heightShape),
			text: self.text,
			color: self.color
		)
			.frame(width: widthScreen, height: heightScreen)
		
		assertSnapshot(
			matching: view,
			as: Snapshotting.image
		)
		
	}
}
