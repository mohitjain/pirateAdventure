//
//  CCViewController.m
//  Pirate Adventure
//
//  Created by Mohit Jain on 30/08/14.
//  Copyright (c) 2014 CodeBeerStartups. All rights reserved.
//

#import "CCViewController.h"
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
    self.currentPoint = CGPointMake(0, 0);
    [self updateCharacterStatsForArmor:nil withWeapons:nil withHealthEffect:0];
    [self updateTile];
    [self updateButton];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionButtonPressed:(UIButton *)sender
{
    CCTile *tile = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    [self updateCharacterStatsForArmor:tile.armor withWeapons:tile.weapon withHealthEffect:tile.healthEffect];
    [self updateTile];
}


- (IBAction)westButtonPressed:(UIButton *)sender
{
    self.currentPoint = CGPointMake(self.currentPoint.x - 1, self.currentPoint.y);
    NSLog(@"WestButtonPressed");
    [self updateButton];
    [self updateTile];
}


- (IBAction)southButtonPressed:(UIButton *)sender
{
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y - 1);
    NSLog(@"SouthButtonPressed");
    [self updateButton];
    [self updateTile];
}

- (IBAction)nothButtonPressed:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y + 1);
    NSLog(@"NorthButtonPressed");
    [self updateButton];
    [self updateTile];
}

- (IBAction)eastButtonPressed:(UIButton *)sender
{
    self.currentPoint = CGPointMake(self.currentPoint.x + 1, self.currentPoint.y);
    NSLog(@"EastButtonPressed");
    [self updateButton];
    [self updateTile];
}


- (void) updateTile
{
    CCTile *tile = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    self.storyLabel.text = tile.story;
    self.backgroundImageView.image = tile.backgroundImage;
    self.damangeLabel.text = [NSString stringWithFormat:@"%i", self.character.damage];
    self.healthLabel.text = [NSString stringWithFormat:@"%i",self.character.health];
    self.weaponLabel.text = self.character.weapon.name;
    self.armorLabel.text = self.character.armor.name;
    [self.actionButton setTitle:tile.actionButtonName forState:UIControlStateNormal];
}


- (void) updateButton{
    self.westButton.hidden = [self tilesExistsAtPoint:CGPointMake(self.currentPoint.x - 1, self.currentPoint.y)];
    self.eastButton.hidden = [self tilesExistsAtPoint:CGPointMake(self.currentPoint.x + 1, self.currentPoint.y)];
    self.northButton.hidden = [self tilesExistsAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y + 1)];
    self.southButton.hidden = [self tilesExistsAtPoint:CGPointMake(self.currentPoint.x + 1, self.currentPoint.y - 1)];
}

- (BOOL) tilesExistsAtPoint:(CGPoint)point{
    
    
    if(point.y >= 0 && point.x >= 0 && point.x < [self.tiles count] && point.y < [[self.tiles objectAtIndex:point.x] count])
    {
        return NO;
    }
    else
    {
        return YES;
    }
    
}

-(void) updateCharacterStatsForArmor:(CCArmor *) armor withWeapons:(CCWeapon *) weapon withHealthEffect:(int) healthEffect
{
    if (armor != nil){
        self.character.health = self.character.health - self.character.armor.health + armor.health;
        self.character.armor = armor;
    }
    else if (weapon != nil)
    {
        self.character.damage = self.character.damage - self.character.weapon.damage + weapon.damage;
        self.character.weapon = weapon;
    }
    else if (healthEffect != 0)
    {
        self.character.health = self.character.health + healthEffect;
    }
    else{
        self.character.health = self.character.health + self.character.armor.health;
        self.character.damage = self.character.damage + self.character.weapon.damage;
    }
}

@end
