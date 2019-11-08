//
//  TXTimer.m
//  Pods
//
//  Created by 张雄 on 2019/11/8.
//

#import "TXTimer.h"

@interface TXTimer ()

/** 定时器 */
@property (nonatomic,strong)NSTimer *timer;

/** 是否开始 */
@property (nonatomic,assign)BOOL isStart;

@end

@implementation TXTimer

/** 快速构建Timer */
+ (instancetype)timer {
    return [[self alloc] init];
}

/** 初始化 */
- (instancetype)init {
    if (self = [super init]) {
        self.timeInterval = 5.f;
        [self stop];
    }
    return self;
}

/** 开始 */
- (void)start {
    if (!self.isStart) {
        [self freed];
        self.timer = [NSTimer timerWithTimeInterval:self.timeInterval target:self selector:@selector(timerEvent:) userInfo:nil repeats:YES];
        [[NSRunLoop mainRunLoop] addTimer:self.timer forMode:NSDefaultRunLoopMode];
        self.isStart = YES;
    }
}

/** 释放 */
- (void)freed {
    [self.timer invalidate];
    self.timer = nil;
}

/** 停止 */
- (void)stop {
    [self freed];
    self.isStart = NO;
}

/** 定时事件 */
- (void)timerEvent:(id)sender {
    if (self.timerHandler) self.timerHandler();
}

/** dealloc */
- (void)dealloc {
    [self stop];
}

@end
