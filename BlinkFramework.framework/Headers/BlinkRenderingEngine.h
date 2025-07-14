//
//  BlinkRenderingEngine.h
//  BlinkFramework
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BlinkRenderingEngine : NSObject

+ (instancetype)sharedEngine;
- (void)initializeRenderer;
- (void)setRenderingMode:(NSString *)mode;
- (NSDictionary *)getRenderingStats;

@end

NS_ASSUME_NONNULL_END

