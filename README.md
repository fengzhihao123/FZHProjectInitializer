# FZHProjectInitializer
FZHProjectInitializer is a convenient initialize project library written in Swift

## Intro

version: 0.0.1
platform: iOS

## Requirements
* iOS 9.0+
* Xcode 8.1+
* Swift 3.0+

## Installation

* CocoaPods

```
pod 'FZHProjectInitializer'
```

Then, run the following command

```
pod install
```

## Usage

Example

```
let fzhTabBar = FZHTabBarViewController()
fzhTabBar.selectColor = UIColor.red
fzhTabBar.normalColor = UIColor.brown
let firstVC = UIViewController()
let secondVC = UIViewController()
let thirdVC = UIViewController()
let fourVC = UIViewController()  

fzhTabBar.setupChildVC(firstVC, title: "first", imageName: "", selectImageName: "")
fzhTabBar.setupChildVC(secondVC, title: "second", imageName: "", selectImageName: "")
fzhTabBar.setupChildVC(thirdVC, title: "third", imageName: "", selectImageName: "")
fzhTabBar.setupChildVC(fourVC, title: "four", imageName: "", selectImageName: "")
window?.rootViewController = fzhTabBar
```

## Contributing
* Fork it
* If you find any problem, please add issue
* Create new Pull Request

## LICENSE
FZHProjectInitializer is released under the MIT license. See LICENSE for details.
