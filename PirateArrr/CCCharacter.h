//
//  CCCharacter.h
//  PirateArrr
//
//  Created by Nick Such on 8/4/14.
//  Copyright (c) 2014 Awesome Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCWeapon.h"
#import "CCArmor.h"

@interface CCCharacter : NSObject

@property (nonatomic)int health;
@property (nonatomic)int damage;
@property (strong, nonatomic) CCArmor *armor;
@property (strong, nonatomic) CCWeapon *weapon;

@end
