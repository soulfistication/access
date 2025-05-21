#import "MailViewController.h"

@implementation MailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Mail";
    self.view.backgroundColor = [UIColor systemBackgroundColor];
    
    UILabel *label = [[UILabel alloc] init];
    label.text = @"Mail";
    label.font = [UIFont systemFontOfSize:34 weight:UIFontWeightBold];
    label.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:label];
    
    [NSLayoutConstraint activateConstraints:@[
        [label.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
        [label.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor]
    ]];
}

@end 