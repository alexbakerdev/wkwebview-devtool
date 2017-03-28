# wkwebview-devtool
Swift iOS App that simply contains a WKWebView for debugging

## How to use

### Setup

1. Clone/Download the project
2. Open the project in Xcode (double click the `.xcodeproj` file)
3. Build and run the app on a simulator with the play button at the top left of the xcode window.
  a. To the right of the play button is a dropdown to select which device/simulator to use

### Debugging

This technique currently only works when running the app on the simulator, not a real device.

1. Make sure safari developer mode is enabled
2. Once the app is running in the simulator, open safari (or quit and reopen safari if neccessary)
3. From the menu bar select Develop -> (wait a bit) -> Simulator -> WKWebview -> [Your URL]

### Changing the URL

If you want to change the URL of the WKWebView

1. Open the project in Xcode
2. Open ViewController.swift
3. Change the string parameter for the `myURL` variable to what you want.

*n.b.* Currently you can only use https protocol. It is possible to enable http addresses though, by adding
 `NSAllowsArbitraryLoads` and `NSAllowsArbitraryLoadsInWebContent` to the project Info.plist.
