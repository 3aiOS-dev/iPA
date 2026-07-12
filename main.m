@import UIKit;
@import Foundation;

@interface TestAppDelegate : UIResponder <UIApplicationDelegate>
@property (strong, nonatomic) UIWindow *window;
@end

@implementation TestAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    UIViewController *viewController = [[UIViewController alloc] init];
    viewController.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *titleLabel = [[UILabel alloc] init];
    titleLabel.text = @"مرحباً";
    titleLabel.font = [UIFont boldSystemFontOfSize:32];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.textColor = [UIColor blackColor];
    titleLabel.frame = CGRectMake(0, 100, self.window.frame.size.width, 100);
    
    UILabel *messageLabel = [[UILabel alloc] init];
    messageLabel.text = @"تطبيق iOS تجريبي";
    messageLabel.font = [UIFont systemFontOfSize:18];
    messageLabel.textAlignment = NSTextAlignmentCenter;
    messageLabel.textColor = [UIColor grayColor];
    messageLabel.frame = CGRectMake(0, 220, self.window.frame.size.width, 100);
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRounded];
    button.frame = CGRectMake(50, 350, self.window.frame.size.width - 100, 50);
    button.backgroundColor = [UIColor blueColor];
    [button setTitle:@"تم" forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:18];
    [button addTarget:self action:@selector(buttonTapped) forControlEvents:UIControlEventTouchUpInside];
    
    [viewController.view addSubview:titleLabel];
    [viewController.view addSubview:messageLabel];
    [viewController.view addSubview:button];
    
    self.window.rootViewController = viewController;
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)buttonTapped {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"نجاح" message:@"تم فتح التطبيق بنجاح" preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"حسناً" style:UIAlertActionStyleDefault handler:nil]];
    [self.window.rootViewController presentViewController:alert animated:YES completion:nil];
}

- (void)applicationWillResignActive:(UIApplication *)application {
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
}

- (void)applicationWillTerminate:(UIApplication *)application {
}

@end

int main(int argc, char *argv[]) {
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([TestAppDelegate class]));
    }
}
