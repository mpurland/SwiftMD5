[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Build Status](https://travis-ci.org/mpurland/SwiftMD5.svg?branch=master)](https://travis-ci.org/mpurland/SwiftMD5)

SwiftMD5
========

SwiftMD5 is a pure Swift implementation for the MD5 algorithm.

Setup
-----

To add SwiftMD5 to your application:

**Using Carthage**

- Add SwiftMD5 to your Cartfile
- Run `carthage update`
- Drag the relevant copy of SwiftMD5 into your project.
- Expand the Link Binary With Libraries phase
- Click the + and add SwiftMD5
- Click the + at the top left corner to add a Copy Files build phase
- Set the directory to `Frameworks`
- Click the + and add SwiftMD5

**Using Git Submodules**

- Clone SwiftMD5 as a submodule into the directory of your choice
- Run `git submodule init -i --recursive`
- Drag `SwiftMD5.xcodeproj` into your project tree as a subproject
- Under your project's Build Phases, expand Target Dependencies
- Click the + and add SwiftMD5
- Expand the Link Binary With Libraries phase
- Click the + and add SwiftMD5
- Click the + at the top left corner to add a Copy Files build phase
- Set the directory to `Frameworks`
- Click the + and add SwiftMD5

License
=======

SwiftMD5 is released under the BSD license.
