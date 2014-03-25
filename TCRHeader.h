//
//  TCRHeader.h
//  IOSPuzzle
//
//  Created by Darren Leak on 2014/01/29.
//  Copyright (c) 2014 Darren Leak. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface TCRHeader : SKSpriteNode

@property (nonatomic) SKLabelNode *labelTime;

//base methods
- (SKSpriteNode *)createBasicHeader:(NSString *)text size:(CGSize)size position:(CGPoint)position backgroundColor:(UIColor *)backgroundColor fontFamily:(NSString *)fontFamily fontSize:(float)fontSize fontColor:(UIColor *)fontColor;

- (SKSpriteNode *)createNoButtonHeader:(NSString *)text size:(CGSize)size position:(CGPoint)position backgroundColor:(UIColor *)backgroundColor fontFamily:(NSString *)fontFamily fontSize:(float)fontSize fontColor:(UIColor *)fontColor;

//needing to show two pieces of information on in the header
- (SKSpriteNode *)createTimerHeader:(NSString *)text time:(int)time size:(CGSize)size position:(CGPoint)position backgroundColor:(UIColor *)backgroundColor fontFamily:(NSString *)fontFamily fontSize:(float)fontSize fontColor:(UIColor *)fontColor;

- (void)changeTime:(int)time;

@end
