//
//  BlinkWebView.h
//  BlinkFramework
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class WKWebView;

@interface BlinkWebView : UIView

@property (nonatomic, strong) NSString *userAgent;
@property (nonatomic, assign) BOOL enableJavaScript;
@property (nonatomic, assign) BOOL enableDOMStorage;
@property (nonatomic, strong) WKWebView *webView;

- (instancetype)initWithFrame:(CGRect)frame;
- (void)loadHTMLString:(NSString *)string baseURL:(nullable NSURL *)baseURL;
- (void)loadRequest:(NSURLRequest *)request;
- (void)evaluateJavaScript:(NSString *)javaScriptString completionHandler:(void (^ _Nullable)(_Nullable id, NSError * _Nullable error))completionHandler;

// Blink-specific methods
- (void)enableBlinkFeatures;
- (void)setBlinkRenderingMode:(NSString *)mode;
- (NSDictionary *)getBlinkPerformanceMetrics;

@end

NS_ASSUME_NONNULL_END
