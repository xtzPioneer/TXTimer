//
//  TXTimer.h
//  Pods
//
//  Created by 张雄 on 2019/11/8.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/** 定时回调 */
typedef void (^TXTimerHandler) (void);

/** 定时器 */
@interface TXTimer : NSObject

/** 时间 */
@property (nonatomic,assign)NSTimeInterval timeInterval;

/** 定时回调 */
@property (nonatomic,copy)TXTimerHandler timerHandler;

/** 开始 */
- (void)start;

/** 停止 */
- (void)stop;

/** 快速构建Timer */
+ (instancetype)timer;

// 禁止使用下面方法创建对象
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;
- (instancetype)copy NS_UNAVAILABLE;
- (instancetype)mutableCopy NS_UNAVAILABLE;

@end

NS_ASSUME_NONNULL_END
