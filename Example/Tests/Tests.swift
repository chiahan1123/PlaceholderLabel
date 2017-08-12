
import Quick
import Nimble
import PlaceholderLabel

class PlaceholderLabelSpec: QuickSpec {

  override func spec() {
    describe("a PlaceholderLabel") {
      var label: PlaceholderLabel!
      beforeEach {
        label = PlaceholderLabel()
        label.textColor = .black
        label.placeholderColor = .gray
      }
      describe("its text") {
        context("when no text and no placeholder is set") {
          it("shows empty gray placeholder") {
            expect(label.isShowingPlaceholder).to(beTrue())
            expect(label.text).to(beNil())
            expect(label.textColor).to(be(UIColor.gray))
          }
        }
        context("when no text and empty placeholder is set") {
          it("shows empty gray placeholder") {
            label.placeholder = ""
            expect(label.isShowingPlaceholder).to(beTrue())
            expect(label.text).to(beEmpty())
            expect(label.textColor).to(be(UIColor.gray))
          }
        }
        context("when empty text and no placeholder is set") {
          it("shows empty gray placeholder") {
            label.text = ""
            expect(label.isShowingPlaceholder).to(beTrue())
            expect(label.text).to(beNil())
            expect(label.textColor).to(be(UIColor.gray))
          }
        }
        context("when empty text and empty placeholder is set") {
          it("shows empty gray placeholder") {
            label.text = ""
            label.placeholder = ""
            expect(label.isShowingPlaceholder).to(beTrue())
            expect(label.text).to(beEmpty())
            expect(label.textColor).to(be(UIColor.gray))
          }
        }
        context("when placeholder is set") {
          beforeEach {
            label.placeholder = "placeholder"
          }
          context("and no text is set") {
            it("shows gray placeholder") {
              expect(label.isShowingPlaceholder).to(beTrue())
              expect(label.text).to(equal("placeholder"))
              expect(label.textColor).to(be(UIColor.gray))
            }
          }
          context("and no text is set and placeholder is set again") {
            it("shows gray placeholder") {
              label.placeholder = "placeholder again"
              expect(label.isShowingPlaceholder).to(beTrue())
              expect(label.text).to(equal("placeholder again"))
              expect(label.textColor).to(be(UIColor.gray))
            }
          }
          context("and text is set") {
            it("shows black text") {
              label.text = "text"
              expect(label.isShowingPlaceholder).to(beFalse())
              expect(label.text).to(equal("text"))
              expect(label.textColor).to(be(UIColor.black))
            }
          }
          context("and text is set and placeholder is set again") {
            it("shows black text") {
              label.text = "text"
              label.placeholder = "placeholder again"
              expect(label.isShowingPlaceholder).to(beFalse())
              expect(label.text).to(equal("text"))
              expect(label.textColor).to(be(UIColor.black))
            }
          }
        }
        context("when text is set") {
          beforeEach {
            label.text = "text"
          }
          context("and no placeholder is set") {
            it("shows black text") {
              expect(label.isShowingPlaceholder).to(beFalse())
              expect(label.text).to(equal("text"))
              expect(label.textColor).to(be(UIColor.black))
            }
          }
          context("and no placeholder is set and text is set again") {
            it("shows black text") {
              label.text = "text again"
              expect(label.isShowingPlaceholder).to(beFalse())
              expect(label.text).to(equal("text again"))
              expect(label.textColor).to(be(UIColor.black))
            }
          }
          context("and placeholder is set") {
            it("shows black text") {
              label.placeholder = "placeholder"
              expect(label.isShowingPlaceholder).to(beFalse())
              expect(label.text).to(equal("text"))
              expect(label.textColor).to(be(UIColor.black))
            }
          }
          context("and text is set and placeholder is set again") {
            it("shows black text") {
              label.placeholder = "placeholder"
              label.text = "text again"
              expect(label.isShowingPlaceholder).to(beFalse())
              expect(label.text).to(equal("text again"))
              expect(label.textColor).to(be(UIColor.black))
            }
          }
        }
      }
      describe("its text color") {
        context("when showing placeholder") {
          beforeEach {
            label.placeholder = "placeholder"
            expect(label.isShowingPlaceholder).to(beTrue())
          }
          it("is gray") {
            expect(label.textColor).to(be(UIColor.gray))
          }
          context("and changing text color") {
            it("is gray") {
              label.textColor = .red
              expect(label.textColor).to(be(UIColor.gray))
            }
          }
          context("and changing placeholder color") {
            it("is red") {
              label.placeholderColor = .red
              expect(label.textColor).to(be(UIColor.red))
            }
          }
        }
        context("when showing text") {
          beforeEach {
            label.text = "text"
            expect(label.isShowingPlaceholder).to(beFalse())
          }
          it("is black") {
            expect(label.textColor).to(be(UIColor.black))
          }
          context("and changing placeholder color") {
            it("is black") {
              label.placeholderColor = .red
              expect(label.textColor).to(be(UIColor.black))
            }
          }
          context("and changing text color") {
            it("is red") {
              label.textColor = .red
              expect(label.textColor).to(be(UIColor.red))
            }
          }
        }
      }
    }
  }

}
