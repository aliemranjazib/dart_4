void main() {
  var fd = FirstDay(); // this code create object of class
  fd.intmanup(); // this code will call method
  fd.stringmanp(); // this code will call method
}

// this is our first class which have and two functions
class FirstDay {
  // this is simple addition fucntion
  void intmanup() {
    int a = 10;
    int b = 20;
    int result = a + b;
    print('rsult is $result');
  }

// this is simple string manipulation function
  void stringmanp() {
    String info = "Hi I am ali";
    if (info.isEmpty) {
      print('info is empty');
    } else {
      print('info is not empty');
    }
  }
}
