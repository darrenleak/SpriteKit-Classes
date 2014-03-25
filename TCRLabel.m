//
//  TCRLabel.m
//  IOSPuzzle
//
//  Created by Darren Leak on 2014/01/31.
//  Copyright (c) 2014 Darren Leak. All rights reserved.
//

#import "TCRLabel.h"

@implementation TCRLabel

- (SKLabelNode *)createBasicLabel:(NSString *)text position:(CGPoint)position fontFamily:(NSString *)fontFamily fontSize:(float)fontSize fontColor:(UIColor *)fontColor
{
    SKLabelNode *label = [SKLabelNode labelNodeWithFontNamed:fontFamily];
    label.text = text;
    label.fontColor = fontColor;
    label.fontSize = fontSize;
    [label setPosition:position];
    
    return label;
}

@end
