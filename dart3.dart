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

  cat1.showVoice();
  cat2.showVoice();
  dog1.showVoice();
  animal1.showVoice();

  print(cat1 is Dog);
  print(cat1 is Animal);
}

class Dog extends Animal {
  Dog({required String name, required int size}) : super(size, name: name);

  @override
  void showVoice() {
    print('${name} say Woof');
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
