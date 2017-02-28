# FZHProjectInitializer
FZHProjectInitializer is an convenient initialize project library written in Swift

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
* If you find any problem, please add new issue
* Create your feature branch (git checkout -b my-new-feature)
* Commit your changes (git commit -am 'Add some feature')
* Push to the branch (git push origin my-new-feature)
* Create new Pull Request

## LICENSE
FZHProjectInitializer is released under the MIT license. See LICENSE for details.
