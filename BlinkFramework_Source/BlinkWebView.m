//
//  BlinkWebView.m
//  BlinkFramework
//

#import "BlinkWebView.h"
#import "BlinkRenderingEngine.h"
#import "BlinkJSEngine.h"

@implementation BlinkWebView

- (instancetype)initWithFrame:(CGRect)frame {
    WKWebViewConfiguration *config = [[WKWebViewConfiguration alloc] init];
    config.allowsInlineMediaPlayback = YES;
    config.mediaTypesRequiringUserActionForPlayback = WKAudiovisualMediaTypeNone;
    
    self = [super initWithFrame:frame configuration:config];
    if (self) {
        self.userAgent = @"BlinkWebView/1.0 (Blink Rendering Engine)";
        self.enableJavaScript = YES;
        self.enableDOMStorage = YES;
        [self enableBlinkFeatures];
    }
    return self;
}

- (void)enableBlinkFeatures {
    // Initialize Blink rendering engine
    [[BlinkRenderingEngine sharedEngine] initializeRenderer];
    [[BlinkJSEngine sharedEngine] initializeV8Engine];
    
    // Set custom user agent
    [self setCustomUserAgent:self.userAgent];
}

- (void)setCustomUserAgent:(NSString *)userAgent {
    [self setValue:userAgent forKey:@"customUserAgent"];
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
