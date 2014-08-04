//
//  CCViewController.h
//  PirateArrr
//
//  Created by Nick Such on 8/4/14.
//  Copyright (c) 2014 Awesome Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CCViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *healthLabel;
@property (strong, nonatomic) IBOutlet UILabel *damageLabel;
@property (strong, nonatomic) IBOutlet UILabel *armorLabel;
@property (strong, nonatomic) IBOutlet UILabel *weaponLabel;
@property (strong, nonatomic) IBOutlet UILabel *storyLabel;
- (IBAction)upButton:(UIButton *)sender;
- (IBAction)rightButton:(UIButton *)sender;
- (IBAction)downButton:(UIButton *)sender;
- (IBAction)leftButton:(UIButton *)sender;
- (IBAction)actionButton:(UIButton *)sender;

@end
