//
//  Command.m
//  11-6命令模式
//
//  Created by 刘浩宇 on 2020/2/20.
//  Copyright © 2020 Organization. All rights reserved.
//

#import "Command.h"
#import "CommandManager.h"

@implementation Command


- (void)excute{
    [self done];

}

- (void)cancel{
    self.completion = nil;

}

- (void)done{
    __weak Command *weakself = self;

    dispatch_async(dispatch_get_main_queue(), ^{
        if (weakself.completion) {
            weakself.completion(self);
        }
        self.completion = nil;

        [[CommandManager shareInstance].arrayCommands removeObject:self];

    });
}

@end
