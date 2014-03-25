//
//  TCRButton.h
//  IOSPuzzle
//
//  Created by Darren Leak on 2014/01/28.
//  Copyright (c) 2014 Darren Leak. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface TCRButton : SKSpriteNode

@property (nonatomic) float btnTextOffsetX;
@property (nonatomic) float btnTextOffsetY;
@property (nonatomic) float btnPressedTextOffsetX;
@property (nonatomic) float btnPressedTextOffsetY;
@property (nonatomic) int fontSize;

//class methods
//set the button position another way
- (SKSpriteNode *)createButton:(NSString *)imageName text:(NSString *)text font:(NSString *)font;
- (SKSpriteNode *)createButtonPressed:(NSString *)imageName text:(NSString *)text font:(NSString *)font;

//set the button position manually
- (SKSpriteNode *)createButton:(NSString *)imageName text:(NSString *)text position:(CGPoint)position font:(NSString *)font;
- (SKSpriteNode *)createButtonPressed:(NSString *)imageName text:(NSString *)text position:(CGPoint)position font:(NSString *)font;

@end
