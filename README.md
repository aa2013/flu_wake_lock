# flu_wake_lock [![Pub version](https://img.shields.io/pub/v/flu_wake_lock.svg)](https://pub.dev/packages/flu_wake_lock) [![GitHub stars](https://img.shields.io/github/stars/dualskana/flu_wake_lock.svg)](https://github.com/dualskana/flu_wake_lock) 


Plugin that allows you to keep the device screen awake, i.e. prevent the screen from sleeping

## Usage

### Install
``` sh
flutter pub add flu_wake_lock
```
### Implementation


```dart
import 'package:flu_wake_lock/flu_wake_lock.dart';
// ...

FluWakeLock _fluWakeLock = FluWakeLock();

// The following line will enable the Android and iOS wakelock.
_fluWakeLock.enable();

// The next line disables the wakelock again.
_fluWakeLock.disable();
```