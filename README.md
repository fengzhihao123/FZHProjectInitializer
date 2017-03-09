# FZHProjectInitializer
FZHProjectInitializer is a convenient initialize project library written in Swift

[中文介绍](https://fengzhihao123.github.io/2017/03/01/FZHProjectInitializer%E4%BB%8B%E7%BB%8D/)

## Intro

* version: 0.0.3
* platform: iOS

## Features

* Hide TabBar two ways
* Left Drawer view

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

### Basic usage

In your custom TabBarController(inherit the FZHTabBarController):

```
let homeVC = HomeViewController()
let findVC = FindViewController()
let messageVC = MessageViewController()
let meVC = MeViewController()
        
self.selectColor = UIColor.red
self.normalColor = UIColor.brown
self.tabBarHideStyle = TabbarHideStyle.animation
self.setupChildVC(childVC: homeVC, title: "home", imageName: "home_normal", selectImageName: "home_select")
self.setupChildVC(childVC: findVC, title: "find", imageName: "find_normal", selectImageName: "find_select")
self.setupChildVC(childVC: messageVC, title: "message", imageName: "message_normal", selectImageName: "message_select")
self.setupChildVC(childVC: meVC, title: "me", imageName: "me_normal", selectImageName: "me_select")
```

* TabBarButton select color is blue by default,If you want custom the select color,you can change it by use `selectColor`property.
* TabBarButton normal color is black by default,If you want custom the normal color,you can change it use `normalColor`property.

In your Appdelegate.swift:

```
let fzhTabBar = ExampleTabBarViewController()
self.window?.rootViewController = fzhTabBar
```

### Hide TabBar two ways

* Normal
```
let fzhTabBar = FZHTabBarViewController()
fzhTabBar.tabBarHideStyle = TabbarHideStyle.normal
```
![gif](https://github.com/fengzhihao123/FZHProjectInitializer/blob/master/NoAnimation.gif)

* Animation
```
let fzhTabBar = FZHTabBarViewController()
fzhTabBar.tabBarHideStyle = TabbarHideStyle.animation
```
![gif](https://github.com/fengzhihao123/FZHProjectInitializer/blob/master/Animation.gif)

### Left Drawer view




## Contributing
* Fork it
* If you think the framework is not bad, please start it
* If you find any problem, please add issue
* Create new Pull Request

## LICENSE
FZHProjectInitializer is released under the MIT license. See LICENSE for details.
