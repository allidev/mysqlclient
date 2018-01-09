#!/bin/bash
set -e

# xcodebuild -project libmysql.xcodeproj -target dbug -configuration Release -sdk macosx ONLY_ACTIVE_ARCH=YES PRODUCT_NAME=dbug
# xcodebuild -project libmysql.xcodeproj -target strings -configuration Release -sdk macosx ONLY_ACTIVE_ARCH=YES PRODUCT_NAME=strings
# xcodebuild -project libmysql.xcodeproj -target vio -configuration Release -sdk macosx ONLY_ACTIVE_ARCH=YES PRODUCT_NAME=vio
# xcodebuild -project libmysql.xcodeproj -target mysys -configuration Release -sdk macosx ONLY_ACTIVE_ARCH=YES PRODUCT_NAME=mysys
# xcodebuild -project libmysql.xcodeproj -target mysys_ssl -configuration Release -sdk macosx ONLY_ACTIVE_ARCH=YES PRODUCT_NAME=mysys_ssl
# xcodebuild -project libmysql.xcodeproj -target zlib -configuration Release -sdk macosx ONLY_ACTIVE_ARCH=YES PRODUCT_NAME=zlib
# xcodebuild -project libmysql.xcodeproj -target yassl -configuration Release -sdk macosx ONLY_ACTIVE_ARCH=YES PRODUCT_NAME=yassl
# xcodebuild -project libmysql.xcodeproj -target taocrypt -configuration Release -sdk macosx ONLY_ACTIVE_ARCH=YES PRODUCT_NAME=taocrypt
# xcodebuild -project libmysql.xcodeproj -target clientlib -configuration Release -sdk macosx ONLY_ACTIVE_ARCH=YES PRODUCT_NAME=clientlib
# xcodebuild -project libmysql.xcodeproj -target comp_err -configuration Release -sdk macosx ONLY_ACTIVE_ARCH=YES PRODUCT_NAME=comp_err
xcodebuild -project libmysql.xcodeproj -target ALL_BUILD -configuration Release

#
# 1. cmake -G Xcode ..
# 2. run XCode, change configuration to release, build ALL_BUILD
# 3. edit project.pbxcproj, search comp_err, note two dependencies, comment out
#    the one that is related to GenError
# 4. run build-ios.sh
#
#

# build libraries individually
xcodebuild -project libmysql.xcodeproj -target dbug -configuration Release -sdk iphoneos ONLY_ACTIVE_ARCH=NO ARCHS="armv6 armv7 armv7s" PRODUCT_NAME=dbug
xcodebuild -project libmysql.xcodeproj -target mysys_ssl -configuration Release -sdk iphoneos ONLY_ACTIVE_ARCH=NO ARCHS="armv6 armv7 armv7s" PRODUCT_NAME=mysys_ssl
xcodebuild -project libmysql.xcodeproj -target strings -configuration Release -sdk iphoneos ONLY_ACTIVE_ARCH=NO ARCHS="armv6 armv7 armv7s" PRODUCT_NAME=strings
xcodebuild -project libmysql.xcodeproj -target taocrypt -configuration Release -sdk iphoneos ONLY_ACTIVE_ARCH=NO ARCHS="armv6 armv7 armv7s" PRODUCT_NAME=taocrypt
xcodebuild -project libmysql.xcodeproj -target zlib -configuration Release -sdk iphoneos ONLY_ACTIVE_ARCH=NO ARCHS="armv6 armv7 armv7s" PRODUCT_NAME=zlib
xcodebuild -project libmysql.xcodeproj -target clientlib -configuration Release -sdk iphoneos ONLY_ACTIVE_ARCH=NO ARCHS="armv6 armv7 armv7s" PRODUCT_NAME=clientlib
xcodebuild -project libmysql.xcodeproj -target yassl -configuration Release -sdk iphoneos ONLY_ACTIVE_ARCH=NO ARCHS="armv6 armv7 armv7s" PRODUCT_NAME=yassl
xcodebuild -project libmysql.xcodeproj -target vio -configuration Release -sdk iphoneos ONLY_ACTIVE_ARCH=NO ARCHS="armv6 armv7 armv7s" PRODUCT_NAME=vio
xcodebuild -project libmysql.xcodeproj -target mysys -configuration Release -sdk iphoneos ONLY_ACTIVE_ARCH=NO ARCHS="armv6 armv7 armv7s" PRODUCT_NAME=mysys

xcodebuild -project libmysql.xcodeproj -target mysqlclient -configuration Release -sdk iphoneos ONLY_ACTIVE_ARCH=NO ARCHS="armv6 armv7 armv7s" PRODUCT_NAME=mysqlclient

