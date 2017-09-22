//
//  ViewController.m
//  ORChartView
//
//  Created by 欧阳荣 on 2017/9/21.
//  Copyright © 2017年 欧阳荣. All rights reserved.
//

#import "ViewController.h"

#import "ORChartView.h"


@interface ViewController ()

@property (nonatomic, strong) ORChartView *chartView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor cyanColor];
    
    _chartView = [[ORChartView alloc]initWithFrame:CGRectMake(0, 50, [UIScreen mainScreen].bounds.size.width, 300) dataSource:@[@"90",@"30",@"10",@"20.5",@"91.5",@"44",@"66.6"] countFoyY:7];

    
//    _chartView.titleForX = @"日期/日";
//    _chartView.titleForY = @"收益/元";
    
    [self.view addSubview:_chartView];

}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    
    /*
     随机数据源
     随机曲线折线
     随机网格
     */
    
    NSMutableArray *array = [NSMutableArray array];
    
    for (int i = 0; i < 20; i ++) {
        NSInteger num = arc4random() % 300;
        [array addObject:[NSString stringWithFormat:@"%ld",num]];
    }
    
    _chartView.dataSource = [array copy];
    _chartView.isMatrix = arc4random() % 2;
    _chartView.isBrokenLine = arc4random() % 2;
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
