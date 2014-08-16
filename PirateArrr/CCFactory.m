//
//  CCFactory.m
//  PirateArrr
//
//  Created by Nick Such on 8/4/14.
//  Copyright (c) 2014 Awesome Inc. All rights reserved.
//

#import "CCFactory.h"

@implementation CCFactory

-(NSArray *)tiles {
    
    CCTile *tile1 = [[CCTile alloc] init];
    tile1.story = @"Player, there's a whole world to be mined and defended against hostile mobs. You need to defeat some creatures in the Nether. Would you like a wooden sword to get started?";
    tile1.backgroundImage = [UIImage imageNamed:@"minecraft-1.png"];
    
    CCTile *tile2 = [[CCTile alloc] init];
    tile2.story = @"You have found a furnace with some smelted iron ingots. Would you like to upgrade your armor to Iron?";
    tile2.backgroundImage = [UIImage imageNamed:@"minecraft-1.png"];
    
    CCTile *tile3 = [[CCTile alloc] init];
    tile3.story = @"A mysterious village appears across the field. Would you like to stop to ask for directions?";
    tile3.backgroundImage = [UIImage imageNamed:@"minecraft-1.png"];
    
    NSMutableArray *firstColumn = [[NSMutableArray alloc] init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];
    
    CCTile *tile4 = [[CCTile alloc] init];
    tile4.story = @"You have found a dog. Dogs are great defenders, and can increase your effective armor!";
    tile4.backgroundImage = [UIImage imageNamed:@"minecraft-1.png"];
    
    CCTile *tile5 = [[CCTile alloc] init];
    tile5.story = @"You found some weapons. Would you like to upgrade your sword to diamond?";
    tile5.backgroundImage = [UIImage imageNamed:@"minecraft-1.png"];
    
    CCTile *tile6 = [[CCTile alloc] init];
    tile6.story = @"You were shot by a skeleton archer.";
    tile6.backgroundImage = [UIImage imageNamed:@"minecraft-1.png"];
    
    NSMutableArray *secondColumn = [[NSMutableArray alloc] init];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];
    
    CCTile *tile7 = [[CCTile alloc] init];
    tile7.story = @"You see some Creepers approaching a town. Would you like to intervene?";
    tile7.backgroundImage = [UIImage imageNamed:@"Minecraft_city_hall.png"];
    
    CCTile *tile8 = [[CCTile alloc] init];
    tile8.story = @"The legend of the deep. A giant squid appears in the water.";
    tile8.backgroundImage = [UIImage imageNamed:@"minecraft-1.png"];
    tile8.healthEffect = -2;
    
    CCTile *tile9 = [[CCTile alloc] init];
    tile9.story = @"You have stumbled upon a chest, full of useful tools and resources.";
    tile9.backgroundImage = [UIImage imageNamed:@"minecraft-1.png"];
    tile9.healthEffect = 1;
    tile9.armor.name = @"Leather Armor";
    tile9.armor.health = 2;
    tile9.weapon.name = @"Wooden Pickaxe";
    tile9.weapon.damage = 2;
    
    NSMutableArray *thirdColumn = [[NSMutableArray alloc] init];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];
    
    CCTile *tile10 = [[CCTile alloc] init];
    tile10.story = @"What's this, here in the cave? It appears to be some sort of treasure...food!";
    tile10.backgroundImage = [UIImage imageNamed:@"minecraft-1.png"];
    tile10.healthEffect = 2;
    
    CCTile *tile11 = [[CCTile alloc] init];
    tile11.story = @"Wouldn't it be nice to be a farmer? Good news, you found a Stone Hoe!";
    tile11.backgroundImage = [UIImage imageNamed:@"minecraft-1.png"];
    tile11.weapon.name = @"Stone Hoe";
    tile11.weapon.damage = 1;
    
    CCTile *tile12 = [[CCTile alloc] init];
    tile12.story = @"What's that hissing sound? Player was blown up by a Creeper.";
    tile12.backgroundImage = [UIImage imageNamed:@"minecraft-1.png"];
//    tile12.healthEffect = -5;
    
    NSMutableArray *fourthColumn = [[NSMutableArray alloc] init];
    [fourthColumn addObject:tile10];
    [fourthColumn addObject:tile11];
    [fourthColumn addObject:tile12];
    
    NSArray *tiles = [[NSArray alloc] initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    
    return tiles;
}

@end
