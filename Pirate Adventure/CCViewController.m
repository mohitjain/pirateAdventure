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
    self.currentPoint = CGPointMake(0, 0);
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

@end
