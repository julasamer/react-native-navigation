/*
 * Copyright 2020 CaperWhite GmbH
 * All rights reserved. Strictly confidential
 *
 * http://www.caperwhite.com
 *
 * Ludwigstr 73a, 70176 Stuttgart, Germany
 * Email info@caperwhite.com, Phone +49 711 46051305
 */

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^HandleControllerBlock)(UIViewController*);

@interface SKRNNHook : NSObject

+ (SKRNNHook*) sharedInstance;

@property (nonatomic, copy) HandleControllerBlock handleControllerBlock;

@end

@interface SKRNNFakeWindow: NSObject
+ (SKRNNFakeWindow*) sharedInstance;

@property(nonatomic, strong, nullable) UIViewController* rootViewController;

@end



NS_ASSUME_NONNULL_END
