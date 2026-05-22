
import XCTest

final class ToDoAppUITests: XCTestCase {

    func testNavigationTitleExists() {
        let app = XCUIApplication()
        app.launch()

        XCTAssertTrue(app.navigationBars["ToDo App"].exists)
    }

    func testAddButtonExists() {
        let app = XCUIApplication()
        app.launch()

        XCTAssertTrue(app.buttons["Add Task"].exists)
    }

    func testTextFieldExists() {
        let app = XCUIApplication()
        app.launch()

        XCTAssertTrue(app.textFields["New Task"].exists)
    }

    func testAddTaskButtonTap() {
        let app = XCUIApplication()
        app.launch()

        app.buttons["Add Task"].tap()
    }

    func testEnterText() {
        let app = XCUIApplication()
        app.launch()

        let field = app.textFields["New Task"]
        field.tap()
        field.typeText("Homework")
    }

    func testTaskAdded() {
        let app = XCUIApplication()
        app.launch()

        let field = app.textFields["New Task"]
        field.tap()
        field.typeText("Study")

        app.buttons["Add Task"].tap()

        XCTAssertTrue(app.staticTexts["Study"].exists)
    }

    func testAppLaunches() {
        let app = XCUIApplication()
        app.launch()
    }

    func testNavigationBarVisible() {
        let app = XCUIApplication()
        app.launch()

        XCTAssertTrue(app.navigationBars.element.exists)
    }

    func testListExists() {
        let app = XCUIApplication()
        app.launch()

        XCTAssertTrue(app.collectionViews.firstMatch.exists)
    }

    func testScreenElementsVisible() {
        let app = XCUIApplication()
        app.launch()

        XCTAssertTrue(app.buttons["Add Task"].exists)
        XCTAssertTrue(app.textFields["New Task"].exists)
    }
}
