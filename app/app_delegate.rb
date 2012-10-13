include SugarCube::Adjust

class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    
    UINavigationBar.appearance.setBackgroundImage("back/plain".uiimage, forBarMetrics: UIBarMetricsDefault)
    UINavigationBar.appearance.tintColor = 0x222222.uicolor 

    tab = UITabBarController.alloc.init
    tab.tabBar.setBackgroundImage("tabbar_background".uiimage)
    tab.tabBar.setSelectionIndicatorImage("tabbar_cell_background".uiimage)
    
    timeline = TimelineController.alloc.initWithTabBar
    things   = ConsumedController.alloc.initWithTabBar
    wish     = WishedController.alloc.initWithTabBar
    user     = UserController.alloc.initWithTabBar
    add      = AddController.alloc.initWithTabBar

    tab.viewControllers = [timeline, things, wish, user, add]
    tab.title           = "BAG"
    
    @window.rootViewController = UINavigationController.alloc.initWithRootViewController(tab)
    @window.makeKeyAndVisible

    # testing Parse
    # Parse.setApplicationId("Ks9i6obkdtMpCXaQVV6SHZCym0uTdmwTCGSUhnUc", clientKey:"RkC2BwMyoSoGTEtOaWGx92ZWyf191FM4tu8oJ0i5")
    # data = PFObject.objectWithClassName("ThingObject")
    # data.setObject("bar", forKey:"foo")
    # data.save
    true
  end
end
    