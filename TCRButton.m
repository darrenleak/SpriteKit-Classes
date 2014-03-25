//
//  TCRButton.m
//  IOSPuzzle
//
//  Created by Darren Leak on 2014/01/28.
//  Copyright (c) 2014 Darren Leak. All rights reserved.
//

#import "TCRButton.h"

@implementation TCRButton

@synthesize btnTextOffsetX = _btnTextOffsetX;
@synthesize btnTextOffsetY = _btnTextOffsetY;
@synthesize btnPressedTextOffsetX = _btnPressedTextOffsetX;
@synthesize btnPressedTextOffsetY = _btnPressedTextOffsetY;
@synthesize fontSize = _fontSize;

//create normal button
- (SKSpriteNode *)createButton:(NSString *)imageName text:(NSString *)text font:(NSString *)font
{
    //set propert values for text pdosition to 0 if they have not been set
    [self setDefaultButtonTextOffset];
    
    //create the sprite
    SKSpriteNode *button = [SKSpriteNode spriteNodeWithImageNamed:imageName];
    [button setName:text];
    
    //create the text for the sprite
    SKLabelNode *buttonText = [SKLabelNode labelNodeWithFontNamed:font];
    [buttonText setName:text];
    buttonText.text = text;
    buttonText.fontSize = self.fontSize;
    buttonText.position = CGPointMake(self.btnTextOffsetX, self.btnTextOffsetY);//this is a child of the button so any positional value will be according to the button and not the scene
    
    //add text to the button
    [button addChild:buttonText];
    
    //return the button
    return button;
}

//create pressed button
- (SKSpriteNode *)createButtonPressed:(NSString *)imageName text:(NSString *)text font:(NSString *)font
{
    //set propert values for text position to 0 if they have not been set
    [self setDefaultButtonTextOffset];
    
    //create the sprite
    SKSpriteNode *button = [SKSpriteNode spriteNodeWithImageNamed:imageName];
    [button setName:text];
    
    //create the text for the sprite
    SKLabelNode *buttonText = [SKLabelNode labelNodeWithFontNamed:font];
    buttonText.text = text;
    buttonText.fontSize = self.fontSize;
    buttonText.position = CGPointMake(self.btnPressedTextOffsetX, self.btnPressedTextOffsetY);
    
    //add text to the button
    [button addChild:buttonText];
    
    //return the button
    return button;
}

//set class properties for offsets to 0 if they are not a number
- (void)setDefaultButtonTextOffset
{
    if(isnan(_btnTextOffsetX))
    {
        self.btnTextOffsetX = 0.0;
    }
    
    if(isnan(_btnTextOffsetY))
    {
        self.btnTextOffsetY = 0.0;
    }
    
    if(isnan(_btnPressedTextOffsetX))
    {
        self.btnPressedTextOffsetX = 0.0;
    }
    
    if(isnan(_btnPressedTextOffsetY))
    {
        self.btnPressedTextOffsetY = 0.0;
    }
}

@end
