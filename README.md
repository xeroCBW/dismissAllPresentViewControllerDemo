![层级结构图](http://upload-images.jianshu.io/upload_images/874748-71168a341fd0401f.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

#### 前言
>很多同学在开发的时候,会想到使用一个 UINavigationController 可以使用一个 pop 命令回到某一个 ViewController获取 rootViewController; 但是好像 Modal(present)出来多个控制器怎么处理呢;好像系统只有一个 dismiss 命令;

在这里有一个小技巧:**你可以找到你想 dismiss 的控制器的前一个控制器,然后用它调用 dismiss; 就可以实现dismiss 到指定控制器的功能**;

#### 说明
在"第二个 VC--A-->B-->C-->D";我想在D 中出发操作,将A,B,C ,D一起干掉,同时选中第一个控制器;这个时候,我们可以在 Appdeleagte 接收 D 发出的通知;然后用它调用 dismiss 方法,这个时候 A,B,C,D 就会一起干掉了;最后切换下window的 rootViewController;

#### 代码

D 控制器中
```
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"dismissVc" object:nil];
    
}

```


appdelegate 中
```
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    TabBarViewController *vc = [[TabBarViewController alloc]init];
    self.window.rootViewController = vc;
    [self.window makeKeyAndVisible];

    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(dismissAll) name:@"dismissVc" object:nil];
    
    
    return YES;
}

- (void)dismissAll{
    
    [[UIApplication sharedApplication].keyWindow.rootViewController dismissViewControllerAnimated:NO completion:nil];
     self.window.rootViewController = [[TabBarViewController alloc]init];
    
}
```


[demo](https://github.com/xeroxmx/dismissAllPresentViewControllerDemo)
