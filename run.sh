#!/bin/bash
set -e
cd ${0%/*}
./gradlew clean
./gradlew :module:assembleRelease
adb shell rm -fv "/data/local/tmp/libxfingerprint_pay_taobao.dex"
adb push ./out/*.zip /sdcard/Download/
