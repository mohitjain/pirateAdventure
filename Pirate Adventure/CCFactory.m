//
//  CCFactory.m
//  Pirate Adventure
//
//  Created by Mohit Jain on 30/08/14.
//  Copyright (c) 2014 CodeBeerStartups. All rights reserved.
//

#import "CCFactory.h"
#import "CCTile.h"

@implementation CCFactory

-(NSArray *)tiles
{

    CCTile *tile1 = [[CCTile alloc] init];
    tile1.story = @"1 Captain, we need a fearless leader such as you to undertake a voyage. You must stop the evil pirate Boss before he steals any more plunder. Would you like a blunted sword to get started?";
    
    tile1.backgroundImage = [UIImage imageNamed:@"PirateStart.jpg"];
    CCTile *tile2 = [[CCTile alloc] init];
    tile2.story = @"2 You have come across an armory. Would you like to upgrade your armor to steel armor?";
    
    tile2.backgroundImage = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    CCTile *tile3 = [[CCTile alloc] init];
    tile3.story = @"3 A mysterious dock appears on the horizon. Should we stop and ask for directions?";
    
    tile3.backgroundImage = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    CCTile *tile4 = [[CCTile alloc] init];
    tile4.story = @"4 You have found a parrot can be used in your armor slot! Parrots are a great defender and are fiercly loyal to their captain.";
    
    tile4.backgroundImage = [UIImage imageNamed:@"PirateParrot.jpg"];
    CCTile *tile5 = [[CCTile alloc] init];
    tile5.story = @"5 You have stumbled upon a cache of pirate weapons. Would you like to upgrade to a pistol?";
    
    tile5.backgroundImage = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    
    CCTile *tile6 = [[CCTile alloc] init];
    tile6.story = @"6 You have been captured by pirates and are ordered to walk the plank";
    
    tile6.backgroundImage = [UIImage imageNamed:@"PiratePlank.jpg"];
    CCTile *tile7 = [[CCTile alloc] init];
    tile7.story = @"7 You sight a pirate battle off the coast";
    
    tile7.backgroundImage = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    CCTile *tile8 = [[CCTile alloc] init];
    tile8.story = @"8 The legend of the deep, the mighty kraken appears";
    
    tile8.backgroundImage = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    CCTile *tile9 = [[CCTile alloc] init];
    tile9.story = @"9 You stumble upon a hidden cave of pirate treasurer";
    
    tile9.backgroundImage = [UIImage imageNamed:@"PirateTreasure.jpeg"];
    CCTile *tile10 = [[CCTile alloc] init];
    tile10.story = @"10 A group of pirates attempts to board your ship";
    
    tile10.backgroundImage = [UIImage imageNamed:@"PirateAttack.jpg"];
    CCTile *tile11 = [[CCTile alloc] init];
    tile11.story = @"11 In the deep of the sea many things live and many things can be found. Will the fortune bring help or ruin?";
    
    tile11.backgroundImage = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    CCTile *tile12 = [[CCTile alloc] init];
    tile12.story = @"12 Your final faceoff with the fearsome pirate boss";
    
    tile12.backgroundImage = [UIImage imageNamed:@"PirateBoss.jpeg"];
    
    
    
    NSMutableArray *firstColumn = [[NSMutableArray alloc] init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];
    
    
    NSMutableArray *secondColumn = [[NSMutableArray alloc] init];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];
    
    
    NSMutableArray *thirdColumn = [[NSMutableArray alloc] init];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];
    
    
    NSMutableArray *fourthColumn = [[NSMutableArray alloc] init];
    [fourthColumn addObject:tile10];
    [fourthColumn addObject:tile11];
    [fourthColumn addObject:tile12];
    
    
    NSArray *tiles = [[NSArray alloc] initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    return tiles;
}

@end
