[![Build Status](https://travis-ci.org/chiahan1123/PlaceholderLabel.svg?branch=master)](https://travis-ci.org/chiahan1123/PlaceholderLabel)
[![Version](https://img.shields.io/cocoapods/v/PlaceholderLabel.svg?style=flat)](http://cocoapods.org/pods/PlaceholderLabel)
[![License](https://img.shields.io/cocoapods/l/PlaceholderLabel.svg?style=flat)](http://cocoapods.org/pods/PlaceholderLabel)
[![Platform](https://img.shields.io/cocoapods/p/PlaceholderLabel.svg?style=flat)](http://cocoapods.org/pods/PlaceholderLabel)

# PlaceholderLabel

Gives UILabel options to set a placeholder text and placeholder text color.

## Installation

PlaceholderLabel is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'PlaceholderLabel'
```

## Example

![screen shot 2017-08-13 at 10 28 24 pm](https://user-images.githubusercontent.com/11417800/29250565-f27ea388-8076-11e7-8148-24fcae7f78ae.png)

You can set the placeholder text and placeholder text color from the Storyboard or you can also do the following:

```swift
@IBOutlet weak var nameLabel: PlaceholderLabel!
@IBOutlet weak var genderLabel: PlaceholderLabel!
@IBOutlet weak var birthdayLabel: PlaceholderLabel!

override func viewDidLoad() {
  super.viewDidLoad()
  nameLabel.text = "Eric"
  genderLabel.text = "Male"
  birthdayLabel.placeholder = "n/a"
  birthdayLabel.placeholderColor = .gray
}
```

## License

PlaceholderLabel is available under the MIT license. See the LICENSE file for more info.
