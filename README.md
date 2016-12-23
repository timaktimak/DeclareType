# DeclareType
An Xcode Source Editor Extension that generates a type declaration based on the file name

![Declare type example](https://github.com/timaktimak/DeclareType/blob/master/Assets/ViewControllerExample.gif)


## Why?

Because choosing a Cocoa Touch Class template and selecting the superclass can be tedious.

## Installation

1. Open ``DeclareType.xcodeproj``
2. Enable target signing for both the Application and the Source Code Extension using your own developer ID
3. Select the application target and then Product > Archive
4. Export the archive as a macOS App
5. Run the app, then quit (Don't delete the app, put it in a convenient folder)
6. Go to System Preferences -> Extensions -> Xcode Source Editor and make sure the extension is enabled
7. The menu-item should now be available from Xcode's Editor menu

## Features
- Detects probable superclass (or that a protocol is created) based on the file name ending
- Imports UIKit it wasn't imported and a UIKit class is being created
- Detects: UIView, UIViewController, UIButton, UITableView, UITableViewCell, UICollectionView, UICollectionViewCell
- Creates a protocol if the file name ends with "able" or "Protocol"
- Will create a class with no parent if no candidate was found

## Shortcut
To really save time use a shortcut (Something like cmd+ctrl+T)
![Shortcut example](https://github.com/timaktimak/DeclareType/blob/master/Assets/Shortcut.png)

## Limitations
Detects superclasses only for UIKit classes.
