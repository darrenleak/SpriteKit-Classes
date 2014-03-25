//
//  TCRLabel.h
//  IOSPuzzle
//
//  Created by Darren Leak on 2014/01/31.
//  Copyright (c) 2014 Darren Leak. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface TCRLabel : SKLabelNode

- (SKLabelNode *)createBasicLabel:(NSString *)text position:(CGPoint)position fontFamily:(NSString *)fontFamily fontSize:(float)fontSize fontColor:(UIColor *)fontColor;

@end
