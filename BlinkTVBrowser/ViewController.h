//
//  ViewController.h
//  BlinkTVBrowser
//

#import <UIKit/UIKit.h>
#import <BlinkFramework/BlinkFramework.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) BlinkWebView *blinkWebView;
@property (strong, nonatomic) UITextField *urlTextField;
@property (strong, nonatomic) UIButton *goButton;
@property (strong, nonatomic) UILabel *statusLabel;

@end
