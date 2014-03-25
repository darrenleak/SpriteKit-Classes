//
//  TCRHeader.m
//  IOSPuzzle
//
//  Created by Darren Leak on 2014/01/29.
//  Copyright (c) 2014 Darren Leak. All rights reserved.
//

#import "TCRHeader.h"

@implementation TCRHeader

@synthesize labelTime = _labelTime;

- (SKSpriteNode *)createBasicHeader:(NSString *)text size:(CGSize)size position:(CGPoint)position backgroundColor:(UIColor *)backgroundColor fontFamily:(NSString *)fontFamily fontSize:(float)fontSize fontColor:(UIColor *)fontColor
{
    //create header sprite
    SKSpriteNode *header = [[SKSpriteNode alloc] initWithColor:backgroundColor size:size];
    [header setPosition:position];
    
    //create label
    SKLabelNode *label = [SKLabelNode labelNodeWithFontNamed:fontFamily];
    label.text = text;
    label.position = CGPointMake(0, -8);
    [label setFontSize:fontSize];
    [label setFontColor:fontColor];
    
    //add label to the header
    [header addChild:label];
    
    //create variable for x position of the back button
    float bbXPos = header.position.x - header.size.width + 20;
    
    //create backbutton
    SKSpriteNode *backButton = [[SKSpriteNode alloc] initWithImageNamed:@"backButton"];
    backButton.position = CGPointMake(bbXPos, 0);
    [backButton setName:@"prevScene"];
    
    //add backbutton to header
    [header addChild:backButton];
    
    //return header
    return header;
}

- (SKSpriteNode *)createNoButtonHeader:(NSString *)text size:(CGSize)size position:(CGPoint)position backgroundColor:(UIColor *)backgroundColor fontFamily:(NSString *)fontFamily fontSize:(float)fontSize fontColor:(UIColor *)fontColor
{
    //create header sprite
    SKSpriteNode *header = [[SKSpriteNode alloc] initWithColor:backgroundColor size:size];
    [header setPosition:position];
    
    //create label
    SKLabelNode *label = [SKLabelNode labelNodeWithFontNamed:fontFamily];
    label.text = text;
    label.position = CGPointMake(0, -8);
    [label setFontSize:fontSize];
    [label setFontColor:fontColor];
    
    //add label to the header
    [header addChild:label];
    
    //return header
    return header;
}

- (SKSpriteNode *)createTimerHeader:(NSString *)text time:(int)time size:(CGSize)size position:(CGPoint)position backgroundColor:(UIColor *)backgroundColor fontFamily:(NSString *)fontFamily fontSize:(float)fontSize fontColor:(UIColor *)fontColor
{
    //create header sprite
    SKSpriteNode *header = [[SKSpriteNode alloc] initWithColor:backgroundColor size:size];
    [header setPosition:position];
    
    //create label
    SKLabelNode *label = [SKLabelNode labelNodeWithFontNamed:fontFamily];
    label.text = text;
    label.position = CGPointMake(-20, -10);
    [label setFontSize:fontSize];
    [label setFontColor:fontColor];
    
    _labelTime = [SKLabelNode labelNodeWithFontNamed:fontFamily];
    _labelTime.text = [NSString stringWithFormat:@"%i",  time];
    _labelTime.position = CGPointMake(30, -10);
    [_labelTime setFontSize:fontSize];
    [_labelTime setFontColor:fontColor];
    
    //add label to the header
    [header addChild:label];
    [header addChild:_labelTime];
    
    //return header
    return header;
}

- (void)changeTime:(int)time
{
    _labelTime.text = [NSString stringWithFormat:@"%i", time];
}

@end
