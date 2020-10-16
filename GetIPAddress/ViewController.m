//
//  ViewController.m
//  GetIPAddress
//
//  Created by 风外杏林香 on 2018/4/18.
//  Copyright © 2018年 风外杏林香. All rights reserved.
//

#import "ViewController.h"
#import "RequestIPAddress.h"
#import "GetIp.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   NSLog(@"公网ip: %@",[ViewController deviceWANIPAddress]);
    
}
+(NSString *)deviceWANIPAddress
{
//https://www.fbisb.com/ip.php 不好用
//https://www.taobao.com/help/getip.php 不好用
//https://pv.sohu.com/cityjson?ie=utf-8 可以用
    NSURL *ipURL = [NSURL URLWithString:@"https://pv.sohu.com/cityjson?ie=utf-8"];
    NSData *data = [NSData dataWithContentsOfURL:ipURL];
    if (data == nil) {
        return @"";
    }
    NSString * str = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    return str;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
