//
//  BlinkJSEngine.h
//  BlinkFramework
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

NS_ASSUME_NONNULL_BEGIN

@interface BlinkJSEngine : NSObject

@property (nonatomic, strong) JSContext *jsContext;

+ (instancetype)sharedEngine;
- (void)initializeV8Engine;
- (id)evaluateScript:(NSString *)script;
- (void)addGlobalObject:(id)object withName:(NSString *)name;

@end

NS_ASSUME_NONNULL_END

