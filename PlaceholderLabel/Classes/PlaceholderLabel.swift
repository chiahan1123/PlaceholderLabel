
import UIKit

/// An `UILabel` with placeholder support.
@IBDesignable
open class PlaceholderLabel: UILabel {

  @IBInspectable open var placeholder: String? {
    didSet {
      if isShowingPlaceholder {
        blockText = true
        text = placeholder
      }
    }
  }

  @IBInspectable open var placeholderColor: UIColor? {
    didSet {
      if isShowingPlaceholder {
        blockTextColor = true
        textColor = placeholderColor ?? .gray
      }
    }
  }

  /// Indicate whether the placeholder is showing.
  public var isShowingPlaceholder = false

  private var blockText = false
  private var blockTextColor = false
  private var actualTextColor: UIColor!

  override open var text: String? {
    didSet {
      if blockText {
        blockText = false
        return
      }
      checkPlaceholder()
    }
  }

  open override var textColor: UIColor! {
    didSet {
      if blockTextColor {
        blockTextColor = false
        return
      }
      actualTextColor = textColor
      if isShowingPlaceholder {
        blockTextColor = true
        textColor = placeholderColor ?? .gray
      }
    }
  }

  required public init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

  override public init(frame: CGRect) {
    super.init(frame: frame)
    initView()
  }

  override open func awakeFromNib() {
    super.awakeFromNib()
    initView()
  }

  override open func prepareForInterfaceBuilder() {
    super.prepareForInterfaceBuilder()
    initView()
  }

  private func initView() {
    actualTextColor = textColor
    checkPlaceholder()
  }

  private func checkPlaceholder() {
    if text?.isEmpty ?? true {
      blockText = true
      blockTextColor = true
      isShowingPlaceholder = true
      text = placeholder
      textColor = placeholderColor ?? .gray
    } else {
      isShowingPlaceholder = false
      textColor = actualTextColor
    }
  }

}
