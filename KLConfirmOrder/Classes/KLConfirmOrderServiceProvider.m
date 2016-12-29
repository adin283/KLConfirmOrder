//
//  KLConfirmOrderServiceProvider.m
//  KLConfirmOrder
//
//  Created by Kevin on 2016/12/29.
//  Copyright © 2016年 KevinLab. All rights reserved.
//

#import "KLConfirmOrderServiceProvider.h"
#import <KLProtocolManager/KLProtocolManager.h>
#import <KLConfirmOrderServiceProtocol/KLConfirmOrderServiceProtocol.h>
#import "KLConfirmOrderViewController.h"

@interface KLConfirmOrderServiceProvider () <KLConfirmOrderServiceProtocol>

@end

@implementation KLConfirmOrderServiceProvider

+ (void)load
{
    [KLProtocolManager registerServiceProvider:[[self alloc] init] forProtocol:@protocol(KLConfirmOrderServiceProtocol)];
}

- (id)confirmOrderViewControllerWithGoodsId:(NSString *)goodsId sureComplete:(dispatch_block_t)sureComplete
{
    KLConfirmOrderViewController *viewController = [[KLConfirmOrderViewController alloc] initWithGoodsId:goodsId sureComplete:sureComplete];
    return viewController;
}

@end
