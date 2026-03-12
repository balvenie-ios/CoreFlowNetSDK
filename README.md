# CoreFlowNet SDK 整合指南

本文件說明如何將 CoreFlowNet SDK 整合至您的 iOS 專案。

## 1. 系統需求
- **iOS 版本**: iOS 11.0+
- **語言**: Swift 5.0+ / Objective-C / SwiftUI
- **工具**: Xcode 14.0+

---

## 2. 安裝說明 (Swift Package Manager)

1. 在 Xcode 中選擇 **File > Add Packages...**。
2. 輸入以下 GitHub 儲存庫 URL：
   `https://github.com/balvenie-ios/CoreFlowNetSDK.git`
3. 在 **Dependency Rule** 選擇 **Up to Next Major Version**。
4. 點擊 **Add Package**，並將 `CoreFlowNetSDK` 勾選加入至您的 App Target。

---

## 3. 代碼整合 - Swift (UIKit)

在 `AppDelegate.swift` 中調用初始化方法：

```swift
import UIKit
import CoreFlowNetSDK // 匯入 SDK

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // 初始化配置
        CoreFlowNet.shared.configure(site: "YourSiteID", package: "YourPackageID") { isSuccess in
            // 初始化結果回調 (選填)
        }
        
        return true
    }
}
```

---

## 4. 代碼整合 - SwiftUI

在 SwiftUI 的 `App` 入口點中調用：

```swift
import SwiftUI
import CoreFlowNetSDK

@main
struct YourApp: App {
    
    init() {
        // 在 App 初始化時啟動配置
        CoreFlowNet.shared.configure(site: "YourSiteID", package: "YourPackageID")
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
```

---

## 5. 代碼整合 - Objective-C

在 `AppDelegate.m` 中調用：

```objective-c
#import <UIKit/UIKit.h>
@import CoreFlowNetSDK; // 使用 @import 語法匯入模組

@interface AppDelegate () <UIApplicationDelegate>
@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // 初始化配置
    [CoreFlowNet.shared configureWithSite:@"YourSiteID" package:@"YourPackageID" completion:^(BOOL isSuccess) {
        // 初始化結果回調 (選填)
    }];

    return YES;
}
@end
```

---

## 6. 注意事項
- 請確保您的專案支援 Swift Package Manager。
- 建議在 App 啟動的最早時機進行初始化。
