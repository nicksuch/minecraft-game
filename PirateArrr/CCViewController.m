//
//  CCViewController.m
//  PirateArrr
//
//  Created by Nick Such on 8/4/14.
//  Copyright (c) 2014 Awesome Inc. All rights reserved.
//

#import "CCViewController.h"
#import "CCCharacter.h"
#import "CCFactory.h"
#import "CCTile.h"

@interface CCViewController ()

@end

@implementation CCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    CCFactory *factory = [[CCFactory alloc] init];
    self.tiles = [factory tiles];
    self.character = [factory character];
    self.boss = [factory boss];
    self.currentTile = CGPointMake(0, 0);
    [self updateCharacterStatsForArmor:nil withWeapons:nil withHealthEffect:0];
    [self updateTile];
    [self updateButtons];
    NSLog(@"x: %f, y: %f", self.currentTile.x, self.currentTile.y);

}

#pragma mark - helper methods

- (void)updateTile
{
    CCTile *tileModel = [[self.tiles objectAtIndex:self.currentTile.x] objectAtIndex:self.currentTile.y];
    self.storyLabel.text = tileModel.story;
    self.backgroundImageView.image = tileModel.backgroundImage;
    self.healthLabel.text = [NSString stringWithFormat:@"Health: %i", self.character.health];
    self.damageLabel.text = [NSString stringWithFormat:@"Damage: %i", self.character.weapon.damage];
    self.armorLabel.text = [NSString stringWithFormat:@"Armor: %@", self.character.armor.name];
    self.weaponLabel.text = [NSString stringWithFormat:@"Weapon: %@", self.character.weapon.name];
    [self.actionButton setTitle:tileModel.actionButtonName forState:UIControlStateNormal];
}

- (void)updateButtons
{
    self.westButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentTile.x - 1, self.currentTile.y)];
    self.eastButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentTile.x + 1, self.currentTile.y)];
    self.northButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentTile.x, self.currentTile.y + 1)];
    self.southButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentTile.x, self.currentTile.y - 1)];
}

- (BOOL)tileExistsAtPoint:(CGPoint)point
{
    if (point.y >= 0 && point.x >= 0 && point.x < [self.tiles count] && point.y < [[self.tiles objectAtIndex:point.x] count]) {
        return NO;
    } else {
        return YES;
    }
}

- (void)updateCharacterStatsForArmor:(CCArmor *)armor withWeapons:(CCWeapon *)weapon withHealthEffect:(int)healthEffect
{
    if (armor != nil) {
        self.character.health = self.character.health - self.character.armor.health + armor.health;
        self.character.armor = armor;
    } else if (weapon != nil) {
        self.character.damage = self.character.damage - self.character.weapon.damage + weapon.damage;
        self.character.weapon = weapon;
    } else if (healthEffect != 0) {
        self.character.health = self.character.health + healthEffect;
    } else {
        self.character.health = self.character.health + self.character.armor.health;
        self.character.damage = self.character.damage + self.character.weapon.damage;
    }
}

#pragma mark - IBActions

- (IBAction)northButtonPressed:(UIButton *)sender
{
    self.currentTile = CGPointMake(self.currentTile.x, self.currentTile.y + 1);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)eastButtonPresses:(UIButton *)sender
{
    self.currentTile = CGPointMake(self.currentTile.x + 1, self.currentTile.y);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)southButtonPressed:(UIButton *)sender
{
    self.currentTile = CGPointMake(self.currentTile.x, self.currentTile.y - 1);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)westButtonPressed:(UIButton *)sender
{
    self.currentTile = CGPointMake(self.currentTile.x - 1, self.currentTile.y);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)actionButtonPressed:(UIButton *)sender
{
    CCTile *tile = [[self.tiles objectAtIndex:self.currentTile.x]objectAtIndex:self.currentTile.y];
    if (tile.healthEffect == -15) {
        self.boss.health = self.boss.health - self.character.damage;
    }
    [self updateCharacterStatsForArmor:tile.armor withWeapons:tile.weapon withHealthEffect:tile.healthEffect];
    if (self.character.health <= 0) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Death Message" message:@"You have died :(" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alertView show];
    } else if (self.boss.health <= 0) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Victory Message" message:@"You have defeated the boss!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alertView show];
    }
    [self updateTile];
}

- (IBAction)resetButtonPressed:(UIButton *)sender {
    self.character = nil;
    self.boss = nil;
    [self viewDidLoad];
}
@end
