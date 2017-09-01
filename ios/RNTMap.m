//
//  RNTMap.m
//  rnDemo
//
//  Created by inf on 17/8/17.
//  Copyright © 2017年 Facebook. All rights reserved.
//

#import "RNTMap.h"
#import "CalendarManager.h"

@interface RNTMap ()

@end

@implementation RNTMap

- (instancetype)init
{
  self = [super init];
  if (self) {
    UIButton * btn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    [self addSubview:btn];
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(sendEvent) forControlEvents:UIControlEventTouchUpInside];
  }
  return self;
}

// 点击发送事件
- (void)sendEvent{
  
  [[NSNotificationCenter defaultCenter] postNotificationName:@"addBtn" object:@"oc"];
}


@end

