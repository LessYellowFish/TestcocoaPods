//
//  CommandManager.m
//  11-6命令模式
//
//  Created by 刘浩宇 on 2020/2/20.
//  Copyright © 2020 Organization. All rights reserved.
//

#import "CommandManager.h"

@implementation CommandManager

+ (instancetype)shareInstance{

    static CommandManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[super allocWithZone:NULL] init];
    });
    return manager;
}

+ (id)allocWithZone:(struct _NSZone *)zone{
    return [self shareInstance];
}

+ (id)copyWithZone:(struct _NSZone *)zone{
    return [self shareInstance];
}

- (id)init{
    self = [super init];
    if (self) {
        _arrayCommands = [NSMutableArray array];
    }
    return self;
}

+ (void)excuteCommand:(Command *)cmd cpmpletion:(CommandCompletionCallBack)completion{
    if (cmd) {
        if (![self isExecuteingCommand:cmd]) {
            [[[self shareInstance] arrayCommands] addObject:cmd];//判断
            cmd.completion = completion;
            [cmd excute];//执行
        }
    }
//    return NO;
}

+ (BOOL)isExecuteingCommand:(Command *)cmd{
    if (cmd) {
        NSArray *cmds = [[self shareInstance] arrayCommands];
        for (Command *acmd in cmds) {
            if (acmd == cmd) {
                return  YES;
            }
        }
    }
    return NO;
}
+ (void)cancelCommand:(Command *)cmd{
    if (cmd) {
        [[[self shareInstance] arrayCommands] removeObject:cmd];
        [cmd cancel];
    }

}
@end
