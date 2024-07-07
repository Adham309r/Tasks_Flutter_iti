abstract class shape {
  area();
  perimeter();
}

class circle extends shape {
  final pi = 3.14;
  double radius;

  circle(this.radius);
  
  @override
  double area() {
    return (pi * radius * radius);
  }
  
  @override
  double perimeter (){
    return (2 * pi * radius);
  }
  
  void displayArea() {
    print("Area of circle is ${area()}");
  }

  void displayperimeter() {
    print("perimeter of circle is ${perimeter()}");
  }
}

class rectangle extends shape {
  double width;
  double length;

  rectangle(this.width, this.length);

  @override
  double area() {
    return (width * length);
  }

  @override
  double perimeter() {
    return (2 * (width + length));
  }

  void displayArea() {
    print("Area of rectangle is ${area()}");
  }

  void displayperimeter() {
    print("Perimeter of rectangle is ${perimeter()}");
  }
}

void main () {
  circle circle1 = circle(2);
  circle1.displayArea();
  circle1.displayperimeter(); 

  print("---------------------------");

  rectangle rectangle1 = rectangle(5, 7);
  rectangle1.displayArea();
  rectangle1.displayperimeter();
}

















