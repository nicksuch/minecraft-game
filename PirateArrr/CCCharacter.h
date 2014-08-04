//
//  CCCharacter.h
//  PirateArrr
//
//  Created by Nick Such on 8/4/14.
//  Copyright (c) 2014 Awesome Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CCCharacter : NSObject

@property (nonatomic)int characterHealth;
@property (nonatomic)int characterDamage;
@property (strong, nonatomic) NSString *characterArmor;
@property (strong, nonatomic) NSString *characterWeapon;

@end
