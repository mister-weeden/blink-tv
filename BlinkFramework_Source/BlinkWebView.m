//
//  BlinkWebView.m
//  BlinkFramework
//

#import "BlinkWebView.h"
#import "BlinkRenderingEngine.h"
#import "BlinkJSEngine.h"
#import <WebKit/WebKit.h>

@implementation BlinkWebView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        WKWebViewConfiguration *config = [[WKWebViewConfiguration alloc] init];
        config.allowsInlineMediaPlayback = YES;
        
        self.webView = [[WKWebView alloc] initWithFrame:self.bounds configuration:config];
        self.webView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        [self addSubview:self.webView];
        
        self.userAgent = @"BlinkWebView/1.0 (Blink Rendering Engine)";
        self.enableJavaScript = YES;
        self.enableDOMStorage = YES;
        [self enableBlinkFeatures];
    }
    return self;
}

- (void)loadHTMLString:(NSString *)string baseURL:(NSURL *)baseURL {
    [self.webView loadHTMLString:string baseURL:baseURL];
}

- (void)loadRequest:(NSURLRequest *)request {
    [self.webView loadRequest:request];
}

- (void)evaluateJavaScript:(NSString *)javaScriptString completionHandler:(void (^)(id, NSError *))completionHandler {
    [self.webView evaluateJavaScript:javaScriptString completionHandler:completionHandler];
}

- (void)enableBlinkFeatures {
    [[BlinkRenderingEngine sharedEngine] initializeRenderer];
    [[BlinkJSEngine sharedEngine] initializeV8Engine];
}

- (void)setBlinkRenderingMode:(NSString *)mode {
    [[BlinkRenderingEngine sharedEngine] setRenderingMode:mode];
}

- (NSDictionary *)getBlinkPerformanceMetrics {
    return @{
        @"renderingStats": [[BlinkRenderingEngine sharedEngine] getRenderingStats],
        @"jsEngineStats": @{@"initialized": @YES},
        @"timestamp": @([[NSDate date] timeIntervalSince1970])
    };
}

@end
