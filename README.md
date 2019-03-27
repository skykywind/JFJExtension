# JFJExtension

JFJExtension complements the UIKit and Foundation frameworks, simplifies system method calls and helps us develop projects faster. At the same time, some extensions will make the Swift code cleaner and beautiful.

[![CI Status](https://img.shields.io/travis/skykywind/JFJExtension.svg?style=flat)](https://travis-ci.org/skykywind/JFJExtension)
[![Version](https://img.shields.io/cocoapods/v/JFJExtension.svg?style=flat)](https://cocoapods.org/pods/JFJExtension)
[![License](https://img.shields.io/cocoapods/l/JFJExtension.svg?style=flat)](https://cocoapods.org/pods/JFJExtension)
[![Platform](https://img.shields.io/cocoapods/p/JFJExtension.svg?style=flat)](https://cocoapods.org/pods/JFJExtension)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Cases
### 创建UIView及其子类
```Swift
_ = UIView()
    .addTo(view)
    .config {
        $0.x = 100
        $0.y = 100
        $0.size = CGSize(width: 100, height: 100)
        $0.backgroundColor = UIColor.red
    }
    
 _ = UILabel()
     .addTo(view)
     .config {
        $0.text = "Hello JFJExtion"
        $0.font = UIFont.systemFont(ofSize: 14)
        $0.textColor = .red
     } 
     .layout {
        $0.top.equalToSuperview().offset(300)
        $0.centerX.equalToSuperview()
     }
 ```

## Requirements

## Installation

JFJExtension is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'JFJExtension'
```

## Author

skykywind, 824214765@qq.com

## License

JFJExtension is available under the MIT license. See the LICENSE file for more info.
