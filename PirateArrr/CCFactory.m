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
    CCWeapon *woodSword = [[CCWeapon alloc] init];
    woodSword.name = @"Wood Sword";
    woodSword.damage = 15;
    tile1.weapon = woodSword;
    tile1.actionButtonName = @"Pick up sword";
    
    CCTile *tile2 = [[CCTile alloc] init];
    tile2.story = @"You have found a furnace with some smelted iron ingots. Would you like to upgrade your armor to Iron?";
    tile2.backgroundImage = [UIImage imageNamed:@"minecraft-1.png"];
    CCArmor *ironArmor = [[CCArmor alloc] init];
    ironArmor.name = @"Iron Armor";
    ironArmor.health = 8;
    tile2.armor = ironArmor;
    tile2.actionButtonName = @"Put on armor";
    
    CCTile *tile3 = [[CCTile alloc] init];
    tile3.story = @"A mysterious village appears across the field. Would you like to stop to ask for directions?";
    tile3.backgroundImage = [UIImage imageNamed:@"minecraft-1.png"];
    tile3.healthEffect = 12;
    tile3.actionButtonName = @"Visit village";
    
    NSMutableArray *firstColumn = [[NSMutableArray alloc] init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];
    
    CCTile *tile4 = [[CCTile alloc] init];
    tile4.story = @"You have found a dog. Dogs are great defenders, and can increase your effective armor!";
    tile4.backgroundImage = [UIImage imageNamed:@"minecraft-1.png"];
    CCArmor *dogArmor = [[CCArmor alloc] init];
    dogArmor.name = @"Dog partner";
    dogArmor.health = 20;
    tile4.armor = dogArmor;
    tile4.actionButtonName = @"Take dog";
    
    CCTile *tile5 = [[CCTile alloc] init];
    tile5.story = @"You found some weapons. Would you like to upgrade your sword to diamond?";
    tile5.backgroundImage = [UIImage imageNamed:@"minecraft-1.png"];
    CCWeapon *diamondSword = [[CCWeapon alloc] init];
    diamondSword.name = @"Diamond Sword";
    diamondSword.damage = 20;
    tile5.weapon = diamondSword;
    tile5.actionButtonName = @"Pick up sword";
    
    CCTile *tile6 = [[CCTile alloc] init];
    tile6.story = @"You were shot by a skeleton archer.";
    tile6.backgroundImage = [UIImage imageNamed:@"minecraft-1.png"];
    tile6.healthEffect = -10;
    tile6.actionButtonName = @"Writhe in pain";
    
    NSMutableArray *secondColumn = [[NSMutableArray alloc] init];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];
    
    CCTile *tile7 = [[CCTile alloc] init];
    tile7.story = @"You see some Creepers approaching a town. Would you like to intervene?";
    tile7.backgroundImage = [UIImage imageNamed:@"Minecraft_city_hall.png"];
    tile7.healthEffect = -5;
    tile7.actionButtonName = @"Risk life for strangers";
    
    CCTile *tile8 = [[CCTile alloc] init];
    tile8.story = @"The legend of the deep. A giant squid appears in the water.";
    tile8.backgroundImage = [UIImage imageNamed:@"minecraft-1.png"];
    tile8.healthEffect = -2;
    tile8.actionButtonName = @"Go for a swim";
    
    CCTile *tile9 = [[CCTile alloc] init];
    tile9.story = @"You have stumbled upon a chest, full of useful tools and resources.";
    tile9.backgroundImage = [UIImage imageNamed:@"minecraft-1.png"];
    tile9.healthEffect = 1;
    CCArmor *leatherArmor = [[CCArmor alloc] init];
    leatherArmor.name = @"Leather Armor";
    leatherArmor.health = 5;
    CCWeapon *woodenPickaxe = [[CCWeapon alloc] init];
    woodenPickaxe.name = @"Wooden Pickaxe";
    woodenPickaxe.damage = 2;
    tile9.armor = leatherArmor;
    tile9.weapon = woodenPickaxe;
    tile9.actionButtonName = @"Open chest";
    
    NSMutableArray *thirdColumn = [[NSMutableArray alloc] init];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];
    
    CCTile *tile10 = [[CCTile alloc] init];
    tile10.story = @"What's this, here in the cave? It appears to be some sort of treasure...food!";
    tile10.backgroundImage = [UIImage imageNamed:@"minecraft-1.png"];
    tile10.healthEffect = 3;
    tile10.actionButtonName = @"Eat food!";
    
    CCTile *tile11 = [[CCTile alloc] init];
    tile11.story = @"Wouldn't it be nice to be a farmer? Good news, you found a Stone Hoe!";
    tile11.backgroundImage = [UIImage imageNamed:@"minecraft-1.png"];
    CCWeapon *stoneHoe = [[CCWeapon alloc] init];
    stoneHoe.name = @"Stone Hoe";
    stoneHoe.damage = 1;
    tile11.weapon = stoneHoe;
    tile11.actionButtonName = @"Pick up hoe";
    
    CCTile *tile12 = [[CCTile alloc] init];
    tile12.story = @"Aww, snap. It's an Enderman. Prepare to fight?";
    tile12.backgroundImage = [UIImage imageNamed:@"minecraft-1.png"];
    tile12.healthEffect = -15;
    tile12.actionButtonName = @"Fight Enderman.";
    
    NSMutableArray *fourthColumn = [[NSMutableArray alloc] init];
    [fourthColumn addObject:tile10];
    [fourthColumn addObject:tile11];
    [fourthColumn addObject:tile12];
    
    NSArray *tiles = [[NSArray alloc] initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    
    return tiles;
}

-(CCCharacter *)character
{
    CCCharacter *character = [[CCCharacter alloc] init];
    character.health = 100;
    CCArmor *armor = [[CCArmor alloc] init];
    armor.name = @"Denim";
    armor.health = 5;
    character.armor = armor;
    
    CCWeapon *weapon = [[CCWeapon alloc] init];
    weapon.name = @"Hand";
    weapon.damage = 10;
    character.weapon = weapon;
    
    return character;
}

-(CCBoss *)boss
{
    CCBoss *boss = [[CCBoss alloc] init];
    boss.health = 65;
    return boss;
}

@end
