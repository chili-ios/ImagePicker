import UIKit
import ImagePicker

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  lazy var imagePickerController: ImagePickerController = {
      let c = ImagePickerController()
      c.collapsePreviewsWhenTakingPicture = false
      c.cropPictureToCameraSize = true
      return c
  }()
  lazy var window: UIWindow? = UIWindow(frame: UIScreen.mainScreen().bounds)

  func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
    window?.rootViewController = imagePickerController
    window?.makeKeyAndVisible()
    
    return true
  }
}
