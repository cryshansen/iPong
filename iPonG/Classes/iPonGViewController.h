//
//  iPonGViewController.h
//  iPonG
//
//  Created by PGW-MAC-01 on 11-02-08.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface iPonGViewController : UIViewController 

{
	IBOutlet UIImageView *ball;
	IBOutlet UIImageView *racquet_yellow;
	IBOutlet UIImageView *racquet_green;
	IBOutlet UILabel *tabToBegin;
	
	IBOutlet UILabel *player_score;
	IBOutlet UILabel *computer_score;
	
	CGPoint ballVelocity;
	
	NSInteger gameState;
	
}

@property(nonatomic, retain) IBOutlet UIImageView *racquet_green;
@property(nonatomic, retain) IBOutlet UIImageView *racquet_yellow;
@property(nonatomic, retain) IBOutlet UIImageView *ball;
@property(nonatomic, retain) IBOutlet UILabel *tabToBegin;

@property(nonatomic, retain) IBOutlet UILabel *player_score;
@property(nonatomic, retain) IBOutlet UILabel *computer_score;

@property(nonatomic) CGPoint ballVelocity;

@property(nonatomic) NSInteger gameState;


@end

