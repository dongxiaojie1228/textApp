//
//  ViewController.m
//  cach
//
//  Created by DXapple on 16/11/23.
//  Copyright © 2016年 DXapple. All rights reserved.
//

#import "ViewController.h"

static NSString *keyString = @"keyString";

@interface ViewController ()<NSCacheDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (nonatomic, strong) NSCache *imageCache;

@end

@implementation ViewController

-(NSCache *)imageCache{
    
    if (!_imageCache) {
        
        _imageCache = [[NSCache alloc]init];
        
        // 设置数量限制 因为就存1张图片
        _imageCache.countLimit = 1 ;

        _imageCache.delegate =self;
    }
    
    return _imageCache;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self saveImageCache];
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{

    UIImage *cacheImage = [self.imageCache objectForKey:keyString];
    
    self.imageView.image = cacheImage;
    
}


-(void)saveImageCache{
    
    UIImage *image = [UIImage imageNamed:@"(O2[45DGBNT_U1S[%{JWW_5"];
    
    [self.imageCache setObject:image forKey:keyString];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
