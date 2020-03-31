<h1>Cronovo iOS SDK</h1>

  [![Language](https://img.shields.io/badge/Swift-5-orange.svg)]()
  [![Language](https://img.shields.io/badge/Objective--C-compatible-blue.svg)]()
  [![License](https://img.shields.io/badge/license-Apache%20License%202.0-red.svg)]()

## Requirements

- iOS 10.0+
- Xcode 10.2.1+
- Swift 4.2 or Objective-C

## CocoaPods

To use the Cronovo SDK we recommend to use Cocoapods 1.7.0 or later

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate the Cronovo SDK into your Xcode project using CocoaPods, specify it in your `Podfile`:


```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
use_frameworks!

pod 'Cronovo', :git =>"https://github.com/antinolabsdev/Cronovo-SDK-iOS.git"
```

Then, run the following command:

```bash
$ pod install
```

## Usage:
If you are setting up a new project, you need to install the SDK. We recommend using CocoaPods 1.7.0 or later to install the SDK.

First of all, if you don't have an Xcode project yet, create one, then install the SDK following the paragraph `Cocoapods`.

**1)** Import the Cronovo iOS SDK module in your UIApplicationDelegate subclass:

```
import SuperBotSDK
```
**2)** Configure a Cronovo iOS SDK shared instance, in your App Delegate, inside **application:didFinishLaunchingWithOptions:** method:

```
Cronovo.sharedInstance.Configure(age: Int, weight: Int, height: Int)
```

This method can used to configure the user profile

### Database:
- We have used SQLite Database to store data.
- Database table has 11 fields (position, signal, hrm, timesec, timems, cadence, steps, vo2,
calories, entrytime, date).
- We are also saving user information in the database like age, weight, height.
- The data to be inserted should be in the form of an array of integers.
- Format of data should be like this [position, signal, hrm, timesec, timems, cadence, steps,
vo2, calorie] and time and date will be calculated in the Framework only.

### Data Insertion:
- There is a public function to allow the user to insert data from the watch into the database
```
insertData(data: [Int])
```
- Here data must be in an array of integers [position, signal, hrm, timesec, timems, cadence, steps, vo2, calorie]

### Read User Data from Database:
`getUserDetails()`
- This will return an array for Integers in order [Age,Height,Weight]

### Methods to calculate app functionalities:
<h3>There are some public methods to calculate the result for the algorithms</h3>

- ###Cardiac Efficiency###


## Contributing

- If you **need help** or you'd like to **ask a general question**, contact us support@pinnacleworks.net
- If you **found a bug**, open a service request.
- If you **have a feature request**, open a service request.
- If you **want to contribute**, submit a pull request.


## Acknowledgements

Made with ❤️ by [Antino Labs](https://www.antino.io/) and [PinnacleWorks](https://pinnacle.works/).


## License
SuperBot is released under the MIT license. [See LICENSE](https://github.com/pinnacle-works/SuperBot-SDK-for-iOS/blob/master/LICENSE) for details.
