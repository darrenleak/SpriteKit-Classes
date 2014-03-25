//
//  TCRPlist.m
//  IOSPuzzle
//
//  Created by Darren Leak on 2014/01/31.
//  Copyright (c) 2014 Darren Leak. All rights reserved.
//

#import "TCRPlist.h"

@implementation TCRPlist

@synthesize plistToRead = _plistToRead;
@synthesize directoryList = _directoryList;

- (id)initWithPlist:(NSString *)plist
{
    if(self = [super init])
    {
        plist = [NSString stringWithFormat:@"%@.plist", plist];
        
        //set _plistToRead
        self.plistToRead = plist;
        
        //create a plist if one has not been created
        [self createPlist:plist];
    }
    
    return self;
}

//create the plist for all the level scores
- (void)createPlist:(NSString *)plistToCreate
{
    //create this outside just incase oneday I need to use this for something else
    NSMutableDictionary *plistDataToWrite;
    
    //get home default path
    self.plistToRead = [NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    self.plistToRead = [self.plistToRead stringByAppendingPathComponent:plistToCreate];
    
    //if the file has not been created this will create the file
    if(![[NSFileManager defaultManager] fileExistsAtPath:self.plistToRead])
    {
        plistDataToWrite = [[NSMutableDictionary alloc] init];
        
        //set defaults
        if([plistToCreate isEqualToString:@"settings.plist"])
        {
            [plistDataToWrite setObject:@"easy" forKey:@"difficulty"];
            [plistDataToWrite setObject:@"on" forKey:@"sound"];
            [plistDataToWrite setObject:@"yes" forKey:@"tutorial"];
        }
        
        if([plistToCreate isEqualToString:@"score.plist"])
        {
            [plistDataToWrite setObject:@"0" forKey:@"highScore"];
            [plistDataToWrite setObject:@"0" forKey:@"currentScore"];
        }
        
        //writes all the data from the plistDataToWrite variable to the plist file
        [plistDataToWrite writeToFile:self.plistToRead atomically:YES];
    }
}

//read non resource based files, used for plists
- (NSMutableDictionary *)readNonResourcePlist
{
    //create dictionary object to store to return the plist data
    NSMutableDictionary *returnDictionary = [[NSMutableDictionary alloc] initWithContentsOfFile:self.plistToRead];
    
    return returnDictionary;
}

//rewrite all the data in the plist so make sure that the dictionary that is passed in will
//contain data for all levels
- (void)writeNonResourcePlist:(NSMutableDictionary *)plistInputData
{
    //checks if the file exists if it doesn't then it will call createPlist and create one
    if([[NSFileManager defaultManager] fileExistsAtPath:self.plistToRead])
    {
        [plistInputData writeToFile:self.plistToRead atomically:YES];
    }
    else
    {
        //call the class to create the plist file
        [self createPlist:self.plistToRead];
    }
}


@end
