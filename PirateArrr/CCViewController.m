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
    self.currentTile = CGPointMake(0, 0);
    [self updateTile];
    [self updateButtons];
    NSLog(@"x: %f, y: %f", self.currentTile.x, self.currentTile.y);

}

- (void)updateTile
{
    CCTile *tileModel = [[self.tiles objectAtIndex:self.currentTile.x] objectAtIndex:self.currentTile.y];
    self.storyLabel.text = tileModel.story;
    self.backgroundImageView.image = tileModel.backgroundImage;
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
    
}
@end
