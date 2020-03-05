//
//  CommandManager.h
//  11-6命令模式
//
//  Created by 刘浩宇 on 2020/2/20.
//  Copyright © 2020 Organization. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"

NS_ASSUME_NONNULL_BEGIN

@interface CommandManager : NSObject

+ (instancetype)shareInstance;

@property (nonatomic,strong) NSMutableArray <Command*>* arrayCommands;



+ (void)excuteCommand:(Command*)cmd cpmpletion:(CommandCompletionCallBack)completion;


+ (void)cancelCommand:(Command*)cmd;

@end

NS_ASSUME_NONNULL_END
