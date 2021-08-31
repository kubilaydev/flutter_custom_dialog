
# Flutter Custum Dialog 

I made my own custom dialog for a app and i wanted share with you. I hope you will like it. Do not hesitate to use if you like. 

![Code block](https://s9.gifyu.com/images/carbon-2.png)
## Examples

```Dart
    AlertScreen(
                  title: 'Its done!',
                  description: 'Successfully completed.',
                  buttonText: 'Great!',
                  dialogType: 'done',
             );
```
I prepared 3 types of AlertScreen. These : `warning` , `info` , `done`. 

AlertScreen is ' Dialog Widget ' so you shoud use inside  `showDialog` like below;


```Dart
    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return const AlertScreen();
                          });
                   },
```

You can choice these 3 type AlertScreen inside of ' dialogType '. 

## Screen Shot




![Screeb Shot](https://s9.gifyu.com/images/ezgif.com-gif-makerefecfc76b3920b81.gif)
  




  
  
## More components ?

I am always open to those who want to contribute!

If you are looking for more components , just head to withflutter.dev ! 

