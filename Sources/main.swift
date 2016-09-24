import Kitura
import HeliumLogger

HeliumLogger.use()
let router = Router()

 router.get("/*") {
    request, response, next in
    do {
        try response.redirect("https://www.yandex.ru/")
    } catch {} 
    next()
}
Kitura.addHTTPServer(onPort: 8090, with: router)
Kitura.run()

