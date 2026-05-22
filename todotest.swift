
import XCTest
@testable import todoApp
final class ToDoTests: XCTestCase {

    func testTaskIsNotEmpty() {
        let task = "Buy milk"
        XCTAssertFalse(task.isEmpty)
    }

    func testEmptyTask() {
        let task = ""
        XCTAssertTrue(task.isEmpty)
    }

    func testAddTask() {
        var tasks = ["Task 1"]
        tasks.append("Task 2")

        XCTAssertEqual(tasks.count, 2)
    }

    func testRemoveTask() {
        var tasks = ["Task 1", "Task 2"]
        tasks.remove(at: 0)

        XCTAssertEqual(tasks.count, 1)
    }

    func testTaskTitle() {
        let task = "Homework"
        XCTAssertEqual(task, "Homework")
    }

    func testArrayContainsTask() {
        let tasks = ["Study", "Work"]
        XCTAssertTrue(tasks.contains("Study"))
    }

    func testArrayNotEmpty() {
        let tasks = ["Task"]
        XCTAssertFalse(tasks.isEmpty)
    }

    func testArrayEmpty() {
        let tasks: [String] = []
        XCTAssertTrue(tasks.isEmpty)
    }

    func testTaskCount() {
        let tasks = ["1", "2", "3"]
        XCTAssertEqual(tasks.count, 3)
    }

    func testNewTaskText() {
        let text = "New"
        XCTAssertEqual(text, "New")
    }
}
