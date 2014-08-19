//
//  CCFactory.h
//  PirateArrr
//
//  Created by Nick Such on 8/4/14.
//  Copyright (c) 2014 Awesome Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCTile.h"
#import "CCCharacter.h"

@interface CCFactory : NSObject

-(NSArray *)tiles;
-(CCCharacter *)character;

@end
