# ios-url-scheme-launch
URLスキームのクエリパラメタを解析するサンプルです。

## 使い方

```swift:
    let url = URL(string: "http://example.com/v1/?id=12345&username=tarou")
    let keys = url?.getKeyVals()

    print(keys?["id"] ?? "unwap id")                    // 12345
    print(keys?["username"] ?? "unwap username")        //tarou
```    

## 開発環境

|category | Version| 
|---|---|
| Swift | 3.0.2 |
| XCode | 8.2 |
| iOS | 10.2〜 |
