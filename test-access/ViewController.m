//
//  ViewController.m
//  test-access
//
//  Created by Ivan Almada on 5/20/25.
//

#import "ViewController.h"
#import "HomeViewController.h"
#import "MailViewController.h"
#import "SettingsViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%@", @"View Controller correcto");
    
    [self setupTabController];
}

- (void)setupTabController {
    // Create view controllers
    HomeViewController *homeVC = [[HomeViewController alloc] init];
    MailViewController *mailVC = [[MailViewController alloc] init];
    SettingsViewController *settingsVC = [[SettingsViewController alloc] init];
    
    // Create navigation controllers
    UINavigationController *homeNav = [[UINavigationController alloc] initWithRootViewController:homeVC];
    UINavigationController *mailNav = [[UINavigationController alloc] initWithRootViewController:mailVC];
    UINavigationController *settingsNav = [[UINavigationController alloc] initWithRootViewController:settingsVC];
    
    // Configure tab bar items
    homeNav.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Home"
                                                      image:[UIImage systemImageNamed:@"house.fill"]
                                              selectedImage:[UIImage systemImageNamed:@"house.fill"]];
    
    mailNav.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Mail"
                                                      image:[UIImage systemImageNamed:@"envelope.fill"]
                                              selectedImage:[UIImage systemImageNamed:@"envelope.fill"]];
    mailNav.tabBarItem.badgeValue = @"2";
    
    settingsNav.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Settings"
                                                          image:[UIImage systemImageNamed:@"gear"]
                                                  selectedImage:[UIImage systemImageNamed:@"gear"]];
    
    // Create tab bar controller
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    tabBarController.viewControllers = @[homeNav, mailNav, settingsNav];
    
    // Set accessibility labels
    homeNav.tabBarItem.accessibilityLabel = @"Home Tab";
    mailNav.tabBarItem.accessibilityLabel = @"Mail Tab with 2 unread messages";
    settingsNav.tabBarItem.accessibilityLabel = @"Settings Tab";
    
    [self addChildViewController:tabBarController];
    
    [self.navigationController pushViewController:tabBarController animated:YES];
}

@end
