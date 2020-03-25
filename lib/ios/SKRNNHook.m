/*
 * Copyright 2020 CaperWhite GmbH
 * All rights reserved. Strictly confidential
 *
 * http://www.caperwhite.com
 *
 * Ludwigstr 73a, 70176 Stuttgart, Germany
 * Email info@caperwhite.com, Phone +49 711 46051305
 */

#import "SKRNNHook.h"

@implementation SKRNNHook

+ (SKRNNHook *)sharedInstance {
	static SKRNNHook *sharedMyManager = nil;
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		sharedMyManager = [[self alloc] init];
	});
	return sharedMyManager;
}

@end

@implementation SKRNNFakeWindow

+ (SKRNNFakeWindow *)sharedInstance {
	static SKRNNFakeWindow *sharedMyManager = nil;
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		sharedMyManager = [[self alloc] init];
	});
	return sharedMyManager;
}

-(void)setRootViewController:(UIViewController *)rootViewController {
	self->_rootViewController = rootViewController;
}

@end
