#!/bin/bash

rm -rf xcodeproj && mkdir xcodeproj && cd xcodeproj && cmake -G "Xcode" -DCMAKE_TOOLCHAIN_FILE=../ios-cmake/ios.toolchain.cmake ..

