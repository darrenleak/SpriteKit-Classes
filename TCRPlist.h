//
//  TCRPlist.h
//  IOSPuzzle
//
//  Created by Darren Leak on 2014/01/31.
//  Copyright (c) 2014 Darren Leak. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TCRPlist : NSObject

@property (strong, nonatomic) NSString *plistToRead;
@property (strong, nonatomic) NSMutableDictionary *directoryList;

//methods
- (id)initWithPlist:(NSString *)plist;
- (NSMutableDictionary *)readNonResourcePlist;
- (void)writeNonResourcePlist:(NSMutableDictionary *)plistInputData;

@end
