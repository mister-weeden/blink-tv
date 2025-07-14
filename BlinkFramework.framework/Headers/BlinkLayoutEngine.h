//
//  BlinkLayoutEngine.h
//  BlinkFramework
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

NS_ASSUME_NONNULL_BEGIN

@interface BlinkLayoutEngine : NSObject

+ (instancetype)sharedEngine;
- (void)initializeLayoutEngine;
- (CGSize)calculateLayoutForHTML:(NSString *)html withConstraints:(CGSize)constraints;
- (NSDictionary *)getLayoutMetrics;

@end

NS_ASSUME_NONNULL_END

