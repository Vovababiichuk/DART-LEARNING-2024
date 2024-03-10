// ignore_for_file: public_member_api_docs, sort_constructors_first
//! Поліморфізм, абстрактний клас, інтерфейс, міксин, дженерики
//! Поліморфізм, абстрактний клас, інтерфейс, міксин, дженерики
//! Поліморфізм, абстрактний клас, інтерфейс, міксин, дженерики

// Поліморфізм - одне виконання декілька реалізацій.

void main() {
  // створюэмо экземпляр
  final animal1 = Animal(45, name: 'Dog');

  final cat1 = Cat(size: 10, name: 'Peter');
  final cat2 = Cat(size: 5, name: 'Tom');
  final dog1 = Dog(size: 20, name: 'Bob');

  // дженерики
  final sergey = Sergey<Dog>();
  // sergey.handleSomething<String>('Hello');
  sergey.handleSomething(dog1);

  cat1.showVoice();
  cat2.showVoice();
  dog1.showVoice();
  animal1.showVoice();

  print(cat1 is Dog);
  print(cat1 is Animal);
}

// дженерики
class Sergey<T> {
  void handleSomething(T object) {
    print(object);
  }
}

// інтерфейс (інтерфейс як правило робиться абстрактним)
// інтерфейс Jumpable не залежить ні від кого. Він може чіплятися на тварину на людину....на що завгодно...
// Будь-який обьект до якого чіпляється інтерфейс зобовязаний імплементувати всі ф-ї даного інтерфейса...
abstract class Jumpable {
  void jump();
}

// міксін
// на відміну від інтерфейсу мфксін не говорить щось обовязкове робити. Він просто дає нам можливість...
mixin NightVision {
  void switchOnNightVision() {
    print('Night vision is on');
  }
}

class Dog extends Animal with NightVision implements Jumpable {
  Dog({required String name, required int size}) : super(size, name: name);

  @override
  void showVoice() {
    print('${name} say Woof');
  }

  @override
  void jump() {
    // TODO: implement jump
  }
}

class Cat extends Animal {
  Cat({required String name, required int size}) : super(size, name: name);

  @override
  void showVoice() {
    print('${name} say Meow');
  }
}

class Animal {
  final int size;
  final String? name;

  Animal(
    this.size, {
    this.name,
  });

  void showVoice() {
    print('${name} say');
  }
}
