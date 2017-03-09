# FZHProjectInitializer
FZHProjectInitializer is a convenient initialize project library written in Swift

[中文介绍](https://fengzhihao123.github.io/2017/03/01/FZHProjectInitializer%E4%BB%8B%E7%BB%8D/)

## Intro

* version: 0.0.3
* platform: iOS

## Features

Hide TabBar two ways
* no animations
```
let rootVC = FZHTabBarViewController()
rootVC.isAnimation = TabbarHideStyle.tabbarHideWithNoAnimation
```
![gif](https://github.com/fengzhihao123/FZHProjectInitializer/blob/master/NoAnimation.gif)

* have animations
```
let rootVC = FZHTabBarViewController()
rootVC.isAnimation = TabbarHideStyle.tabbarHideWithAnimation
```

![gif](https://github.com/fengzhihao123/FZHProjectInitializer/blob/master/Animation.gif)

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

* TabBarButton select color is blue by default,If you want custom the select color,you can change it by use `selectColor`property.
* TabBarButton normal color is black by default,If you want custom the normal color,you can change it use `normalColor`property.

## Contributing
* Fork it
* If you think the framework is not bad, please start it
* If you find any problem, please add issue
* Create new Pull Request

## LICENSE
FZHProjectInitializer is released under the MIT license. See LICENSE for details.
