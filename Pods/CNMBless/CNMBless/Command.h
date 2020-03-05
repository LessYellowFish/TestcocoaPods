//
//  Command.h
//  11-6命令模式
//
//  Created by 刘浩宇 on 2020/2/20.
//  Copyright © 2020 Organization. All rights reserved.
//

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN

@class Command;
typedef void(^CommandCompletionCallBack)(Command* cmd);

@interface Command : NSObject

@property (nonatomic,copy,nullable) CommandCompletionCallBack completion;

- (void)excute;
- (void)cancel;

- (void)done;

@end

NS_ASSUME_NONNULL_END
