//
//  ViewController.m
//  Calculator2
//
//  Created by Eman on 01/01/2013.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property int operation ;
@property BOOL flage ;
@property NSString *num1;
@property NSString *num2;
@property NSString *result;


//@property float second ;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)buttoms:(id)sender {
   // NSNumberFormatter *formater = [[NSNumberFormatter alloc]init];
  //  [formater setNumberStyle:NSNumberFormatterDecimalStyle];
   // NSNumber *number1 = [formater numberFromString:_label.text];
   // NSNumber *number2 = [formater numberFromString:_label.text];

    switch ([sender tag])
    {
        case 0:
            _label.text= [_label.text stringByAppendingString:@"0"];
            if (_flage)
                _num2= _label.text;
            break ;
        case 1:
            _label.text=[_label.text stringByAppendingString:@"1"];
            if (_flage)
                _num2= _label.text;
            break ;
        case 2:
            _label.text=[_label.text stringByAppendingString:@"2"];
            if (_flage)
                _num2= _label.text;
            break ;
        case 3:
            _label.text=[_label.text stringByAppendingString:@"3"];
            if (_flage)
                _num2= _label.text;
            break ;
        case 4:
            _label.text=[_label.text stringByAppendingString:@"4"];
            if (_flage)
                _num2= _label.text;
        case 5:
            _label.text=[_label.text stringByAppendingString:@"5"];
            if (_flage)
                _num2= _label.text;
            break ;
        case 6:
            _label.text=[_label.text stringByAppendingString:@"6"];
            if (_flage)
                _num2= _label.text;
            break ;
        case 7:
            _label.text=[_label.text stringByAppendingString:@"7"];
            if (_flage)
                _num2= _label.text;
            break ;
        case 8:
            _label.text=[_label.text stringByAppendingString:@"8"];
            if (_flage)
                _num2= _label.text;
            break ;
        case 9:
            _label.text=[_label.text stringByAppendingString:@"9"];
            if (_flage)
                _num2= _label.text;
            break ;
        case 10:
            _label.text=@"";
            if (_flage)
                _num2= _label.text;
            break ;
        case 11:
           // NSNumberFormatter *formater = [[NSNumberFormatter alloc]init];

//[formater setNumberStyle:NSNumberFormatterDecimalStyle];
         //  NSNumber *number = [formater numberFromString:_label.text];
           // _label.text=[_label.text stringByAppendingString:@"/"];
           _num1=_label.text;
            _label.text= @"";
            _flage=YES ;
            _operation=1;
            break ;
        case 12:
            /* if (_flage)
            {
                _num1 = _result;
            }
            else {*/
                _num1=_label.text;
                _label.text= @"";
                // _label.text=[_label.text stringByAppendingString:@"+"];
                _flage=YES ;
            //}
            _operation=2;
            break ;
        case 13:
            _num1=_label.text;
             _label.text= @"";
           // _label.text=[_label.text stringByAppendingString:@"-"];
            _flage=YES ;

            _operation=3;
            break ;
        case 14:
           // _num1=_label.text;
             _label.text= @"";
           // _label.text=[_label.text stringByAppendingString:@"="];
         

            switch(_operation)
            {
            case 1:
                    
                    _label.text= [NSString stringWithFormat:@"%1f", ([_num1 doubleValue]/[_num2 doubleValue])];
               //     _result= _label.text;
                 
                break ;
            case 2:
                    _label.text= [NSString stringWithFormat:@"%1f", ([_num1 doubleValue]+[_num2 doubleValue])];
                 //  _result= _label.text;
                break ;
            case 3:
                    _label.text= [NSString stringWithFormat:@"%1f", ([_num1 doubleValue]-[_num2 doubleValue])];
                 //   _result= _label.text;

                    break ;
            case 4:
                    _label.text= [NSString stringWithFormat:@"%1f", ([_num1 doubleValue]*[_num2 doubleValue])];
                  //  _result= _label.text;

                        break ;
                default:
                    break ;
            }
            
          //  if (_label.text == )
            break ;
        case 15:
            _label.text=[_label.text stringByAppendingString:@"."];
            break ;
        case 16 :
            _num1=_label.text;
             _label.text= @"";
           // _label.text=[_label.text stringByAppendingString:@"*"];
            _flage=YES ;
            _operation=4;

            
    }
}


@end
