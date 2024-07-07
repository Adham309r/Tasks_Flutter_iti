abstract class serializable {
  toJson();
}

class User implements serializable {
  String name;
  int age;
  int id;

  User(this.name, this.age, this.id);
  @override
  toJson() {
    return("User name is $name , User age is $age , User id is $id");
  }
}

class product implements serializable {
  String name;
  int id;
  double price;

  product(this.name , this.price , this.id);
  @override
  toJson() {
    return("product name is $name , product price is $price , product id is $id");
  }
}

void main() {
  User user1 = User("Adham", 21, 8);
  product product1 = product("Book", 222.5, 7);

  print(user1.toJson());
  print("----------------");
  print(product1.toJson());
}































