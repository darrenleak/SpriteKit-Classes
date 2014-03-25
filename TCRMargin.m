//
//  TCRMargin.m
//  IOSPuzzle
//
//  Created by Darren Leak on 2014/01/28.
//  Copyright (c) 2014 Darren Leak. All rights reserved.
//

#import "TCRMargin.h"

@implementation TCRMargin

- (NSMutableArray *)margin:(float)maxHeight startYPos:(float)startYPos itemList:(NSMutableArray *)itemList
{
    //create array to hold all of the created positions
    NSMutableArray *coords = [[NSMutableArray alloc] init];
    
    //height for all items combined
    float combinedItemHeight = [self combinedItemHeight:itemList];
    
    
    //check if the combined height is the correct size
    if(maxHeight < combinedItemHeight || combinedItemHeight < 0)
        return NO;
    
    //create a margin variable
    float margin = ((maxHeight - combinedItemHeight) / [itemList count]);
    
    coords = [self getYPosForItems:itemList startYPos:startYPos marginVal:margin];
    
    //return an array
    return coords;
}

- (float)combinedItemHeight:(NSMutableArray *)itemList
{
    //variable to store the max hight
    float height = 0;
    
    for(SKSpriteNode *button in itemList)
    {
        height += button.size.height;
    }
    
    //return the hight
    return height;
}

- (NSMutableArray *)getYPosForItems:(NSMutableArray *)items startYPos:(float)startYPos marginVal:(float)marginVal
{
    //create an index variable to store the current index
    int index = 0;
    int maxIndex = [items count];
    SKSpriteNode *prevItem;
    
    //create array to store item coords
    NSMutableArray *coords = [[NSMutableArray alloc] initWithCapacity:maxIndex];
    
    //create y coord that will change and that will be added to the array
    float y = startYPos;
    
    for(SKSpriteNode *spriteProperties in items)
    {
        if(index == 0)
        {
            //update y value
            y = y - (spriteProperties.size.height / 2);
            
            //add the y coord to the coord array
            [coords addObject:[NSNumber numberWithFloat:y]];
            
            index++;
        }
        else if(index >= 1)
        {
            //create sk sprite for the next item
            prevItem = [items objectAtIndex:index - 1];
            
            //update y value
            y = y - marginVal - (prevItem.size.height / 2);
            
            //add the y coord to the coord array
            [coords addObject:[NSNumber numberWithFloat:y]];
            
            index++;
        }
    }
    
    return coords;
    
}






@end
