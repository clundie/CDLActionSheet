## About

```CDLActionSheet``` is a simple ```UIActionSheet``` subclass that makes it
easier to handle button clicks.

## Example usage:

```obj-c
CDLActionSheet *sheet = [[CDLActionSheet alloc] init];
[sheet addButtonWithTitle:@"Foo" clickHandler:^{
  // Do something
}];
sheet.cancelButtonIndex = [sheet addButtonWithTitle:@"Cancel"
                                       clickHandler:nil];
[sheet showInView:self.view];
```

### Author

[Chris Lundie](http://www.lundie.ca/)
