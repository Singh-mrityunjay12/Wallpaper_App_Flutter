void main() {
  Bike().twoVehical();
  Bike().color();
  Bike().Te();
}

abstract class vehical {
  void
      twoVehical(); //this is a abstract function here we can not describe the body of the this function

  void color() {
    //this is simple function not abstract function because here described the body of function
    print("Colors");
  }
}
//

//inheritance the abstract function vehical

class Bike extends vehical {
  void twoVehical() {
    print("two Vehical");

    //abstract function ke body ko ham vaha describe karate jis class me ham abstract function ko inheritance karate h yadi a
    //ham log abstract function ke body ko described nahi karenge to hame milega
  }

  void Te() {
    print("Mrityunjay");
  }
}

//ham log extends keyword ka use karake kisi class ko inheritance kar sakate h jisko inhiritance karate us class ke sabhi properties and method ko use kar sakate h

//GetX is a statemanagemen as well as microframework getx itself provide nevigation management,routes,dependency injection
//jab hame container ko tapvable banana hota h to ham container ko InkWell or GesterDedector se Wrap kar date h
// ctrl as well as dot to wrap the any widget
//getx is future function
//jab main ak page se dusare page per gaya but mughe dusare page per nahi ana h to usake liye Get.of(nextpage());
//jab 1 se 2 se 3 ...jana hota h to sabhi page off ho jaye usake liye Get.offAll(nextpage()); ka use karate h
//this is unnamed routing
