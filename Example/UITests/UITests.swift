
import FBSnapshotTestCase
import PlaceholderLabel

class UITests: FBSnapshotTestCase {

  private var label: PlaceholderLabel!

  override func setUp() {
    super.setUp()
    // only set record mode to true when generating the reference images
    recordMode = false
    label = PlaceholderLabel(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
  }

  func testEmptyLabel() {
    FBSnapshotVerifyView(label)
    FBSnapshotVerifyLayer(label.layer)
  }

  func testLabelWithPlaceholder() {
    label.placeholder = "placeholder"
    FBSnapshotVerifyView(label)
    FBSnapshotVerifyLayer(label.layer)
  }

  func testLabelWithPlaceholderChangePlaceholderColorRedBefore() {
    label.placeholderColor = .red
    label.placeholder = "placeholder"
    FBSnapshotVerifyView(label)
    FBSnapshotVerifyLayer(label.layer)
  }

  func testLabelWithPlaceholderChangePlaceholderColorRedAfter() {
    label.placeholder = "placeholder"
    label.placeholderColor = .red
    FBSnapshotVerifyView(label)
    FBSnapshotVerifyLayer(label.layer)
  }

  func testLabelWithPlaceholderChangeTextColorRedBefore() {
    label.textColor = .red
    label.placeholder = "placeholder"
    FBSnapshotVerifyView(label)
    FBSnapshotVerifyLayer(label.layer)
  }

  func testLabelWithPlaceholderChangeTextColorRedAfter() {
    label.placeholder = "placeholder"
    label.textColor = .red
    FBSnapshotVerifyView(label)
    FBSnapshotVerifyLayer(label.layer)
  }

  func testLabelWithText() {
    label.text = "text"
    FBSnapshotVerifyView(label)
    FBSnapshotVerifyLayer(label.layer)
  }

  func testLabelWithTextChangeTextColorRedBefore() {
    label.textColor = .red
    label.text = "text"
    FBSnapshotVerifyView(label)
    FBSnapshotVerifyLayer(label.layer)
  }

  func testLabelWithTextChangeTextColorRedAfter() {
    label.text = "text"
    label.textColor = .red
    FBSnapshotVerifyView(label)
    FBSnapshotVerifyLayer(label.layer)
  }

  func testLabelWithTextChangePlaceholderColorRedBefore() {
    label.placeholderColor = .red
    label.text = "text"
    FBSnapshotVerifyView(label)
    FBSnapshotVerifyLayer(label.layer)
  }

  func testLabelWithTextChangePlaceholderColorRedAfter() {
    label.text = "text"
    label.placeholderColor = .red
    FBSnapshotVerifyView(label)
    FBSnapshotVerifyLayer(label.layer)
  }

  func testLabelWithPlaceholderAndText() {
    label.placeholder = "placeholder"
    label.text = "text"
    FBSnapshotVerifyView(label)
    FBSnapshotVerifyLayer(label.layer)
  }

  func testLabelWithTextAndPlaceholder() {
    label.text = "text"
    label.placeholder = "placeholder"
    FBSnapshotVerifyView(label)
    FBSnapshotVerifyLayer(label.layer)
  }

}
