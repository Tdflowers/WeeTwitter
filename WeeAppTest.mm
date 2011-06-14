#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "BBWeeAppController-Protocol.h"

@interface WeeAppTestController : NSObject <BBWeeAppController>
{
    UIView *_view;
    UIWebView *webView;
}

+ (void)initialize;
- (UIView *)view;

@end

@implementation WeeAppTestController

+ (void)initialize
{
    
}

- (void)dealloc
{
    [_view release];
    [super dealloc];
}

- (UIView *)view
{
    if (_view == nil)
    {
        _view = [[UIView alloc] initWithFrame:CGRectMake(2, 0, 316, 300.0)];
        
        CGRect webFrame = CGRectMake(0.0, 0.0, 316.0, 300.0);
        webView = [[UIWebView alloc] initWithFrame:webFrame];
        [webView setBackgroundColor:[UIColor clearColor]];
        NSString *urlAddress = @"http://m.twitter.com";
        NSURL *url = [NSURL URLWithString:urlAddress];
        NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
        [webView loadRequest:requestObj];
        [_view addSubview:webView];
        [webView release];
        
    }
    
    return _view;
}

- (float)viewHeight
{
    return 300.0f;
}


- (void)willAnimateRotationToInterfaceOrientation:(int)arg1
{
	if (UIInterfaceOrientationIsLandscape(arg1)) {
		CGRect rect=[self view].frame;
		rect.size.width=476;
		[self view].frame=rect;
		for(UIView* v__ in [[self view] subviews]){
	                CGRect rect=v__.frame;
        	        rect.size.width=476;
                	v__.frame=rect;
		}
	} else {
		CGRect rect=[self view].frame;
		rect.size.width=316;
		[self view].frame=rect;
		for(UIView* v__ in [[self view] subviews]){
	                CGRect rect=v__.frame;
        	        rect.size.width=316;
                	v__.frame=rect;
		}
	}
}

@end