# Minions

Global Helper Classes because only global state is a bad thing

## Requirements

- iOS 8.0+ / Mac OS X 10.9+ / tvOS 9.0+ / watchOS 2.0+
- Xcode 7.3+

## Installation

**Embedded frameworks require a minimum deployment target of iOS 8 or OS X Mavericks (10.9).**


### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

> CocoaPods 0.39.0+ is required to build Alamofire 3.0.0+.

To integrate Minions

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'Minions'
end
```

Then, run the following command:

```bash
$ pod install
```

### Carthage

To integrate Minions into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github 'Minions'
```

Run `carthage update` to build the framework and drag the built `Minions.framework` into your Xcode project.