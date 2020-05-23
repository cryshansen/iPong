//
//  iPonGViewController.m
//  iPonG
//
//  Created by PGW-MAC-01 on 11-02-08.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iPonGViewController.h"
#define kGameStateRunning 1
#define kGameStatePaused 2

#define kBallSpeedX 10
#define kBallSpeedY 15

@implementation iPonGViewController

@synthesize ball, racquet_yellow,raquet_green,player_score,computer_score,gameState,ballVelocity,tapToBegin;


-(void)viewDidLoad{
[super viewDidLoad];
self.gameState = kGameStatePaused;
ballVelocity = CGPointMake(kBallSpeedX,kBallSpeedY);
[NSTimer scheduledTimerWithTImeInterval:0.05 target:self selector:@selector(gameLoop) userInfo:nil repeat:YES];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event 
{
	if(gameState == kGameStatePaused)
	{
		tabToBegin.hidden=YES;
		gameState=kGameStateRunning;
	}
}


-(void)dealloc {
	[super dealloc];
	[ball release];
	[racquet_green release];
	[raquet_yellow release];
	[player_score release];
	[computer_score release];
	[tapToBegin release];
}

-(void) gameLoop{
	if(gameState == kGameStateRunning)
	{
		ball.center = CGPointMake(ball.center.x + ballVelocity.x,ball.center.y + ballVelocity.y);
		if(ball.center.x > self.view.bounds.size.width || ball.center.x <0)
		{
			ballVelocity.x = -ballVelocity.x;
		}
		if(ball.center.y > self.view.bounds.size.width || ball.center.y <0)
		{
			ballVelocity.y = -ballVelocity.y;
		}
	}else{
		if(tapToBegin.hidden)
		{
			tabToBegin.hidden = NO;
		}
	}
	
}
/*
 // The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
	[ball release];
	[racquet_yellow release];
	[raquet_green release];
	[computer_score release];
	[player_score release];
	[tapToBegin release];
}

@end
