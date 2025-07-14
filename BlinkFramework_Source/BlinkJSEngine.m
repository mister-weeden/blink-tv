//
//  BlinkJSEngine.m
//  BlinkFramework
//

#import "BlinkJSEngine.h"

@interface BlinkJSEngine ()
@property (nonatomic, assign) BOOL isV8Initialized;
@end

@implementation BlinkJSEngine

+ (instancetype)sharedEngine {
    static BlinkJSEngine *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.jsContext = [[JSContext alloc] init];
        self.isV8Initialized = NO;
    }
    return self;
}

- (void)initializeV8Engine {
    if (!self.isV8Initialized) {
        NSLog(@"⚡ Initializing Blink V8 JavaScript Engine");
        
        // Set up V8-like environment in JSContext
        self.jsContext[@"console"] = @{
            @"log": ^(NSString *message) {
                NSLog(@"[Blink JS] %@", message);
            }
        };
        
        // Add Blink-specific APIs
        self.jsContext[@"blink"] = @{
            @"version": @"1.0.0",
            @"engine": @"V8-Compatible"
        };
        
        self.isV8Initialized = YES;
    }
}

- (id)evaluateScript:(NSString *)script {
    if (!self.isV8Initialized) {
        [self initializeV8Engine];
    }
    
    JSValue *result = [self.jsContext evaluateScript:script];
    return [result toObject];
}

- (void)addGlobalObject:(id)object withName:(NSString *)name {
    self.jsContext[name] = object;
}

@end
