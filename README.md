# proxy-on-swift

## Install

git clone https://github.com/vkhv/proxy-on-swift.git

Then change server in Sources/main.swift from yndex to your server.

```
 router.get("/*") {
    request, response, next in
    do {
        try response.redirect("https://www.yandex.ru/")
    } catch {} 
    next()
}
```
Usage
```
swift build && ./.build/debug/proxy
```
