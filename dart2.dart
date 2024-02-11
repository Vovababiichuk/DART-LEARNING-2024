//! Git, Об'єкти, Класи, Інкапсуляція, Успадкування.
//! Git, Об'єкти, Класи, Інкапсуляція, Успадкування.
//! Git, Об'єкти, Класи, Інкапсуляція, Успадкування.

// Буває Процедурне та об'єктно орієнтоване програмування (OOП)

// Процедурне - послідовне виконання... (Функції в функції main...)... і коли проект розростається то стає жах, тому придумали ООП

// ООП - пробує повторити навколишній світ. А нас оточують ОБЬЕКТИ. Обьекти взаємодіють з обьектами і кожен обьект має свою поведінку...

// Клас - це описання.
// Обьект - коли ми оперуємо з обьектом ми оперуємо тільки з єкземпляром цього обьекта...
// Обьект - має мати властивості і поведінку...

// void main(List<String> args) {
//   // ініціалізуємо обьект
//   final car = Car(180, 'black', true);
// }

// // створюємо єкземпляр обьекта car використовуючи клас Car()
// class Car {
//   // властивості Car
//   int _maxSpeed;
//   String color;
//   bool isElectric;

//   // конструктор
//   // this - звернення до самого себе
//   Car(this._maxSpeed, this.color, this.isElectric);

//   // поведінка
//   int hoursToKyiv(int distance) {
//     return distance ~/ _maxSpeed; // ~/ - округлення до цілого
//   }
// }

//TODO -   3 принципа ООП: ІНКАПСУЛЯЦІЯ, НАСЛІДУВАННЯ, ПОЛІМОРФІЗМ
//TODO -   3 принципа ООП: ІНКАПСУЛЯЦІЯ, НАСЛІДУВАННЯ, ПОЛІМОРФІЗМ
//TODO -   3 принципа ООП: ІНКАПСУЛЯЦІЯ, НАСЛІДУВАННЯ, ПОЛІМОРФІЗМ

//LINK - https://training.epam.ua/ua/blog/275

//TODO - ІНКАПСУЛЯЦІЯ


//? 1. ІНКАПСУЛЯЦІЯ - в капсулі. Все що відбувається з цим обьектом повинно відбуватися в середині цього обьекта...

//? Приховування
//? Приховування
//? Приховування

// void main(List<String> args) {
//   final car = Car(180, 'black', true);
//   final _maxSpeed = car._maxSpeed;
// }

// class Car {
//   int _maxSpeed;
//   String color;
//   bool isElectric;

//   Car(this._maxSpeed, this.color, this.isElectric);

//   int hoursToKyiv(int distance) {
//     return distance ~/ _maxSpeed;
//   }
// }

//? Приховування
//? Приховування
//? Приховування

// void main(List<String> args) {
//   final car = Car(180, 'black', true);
//   // car.maxSpeed - визивається ф-я яка дістає прихование поле...
//   final maxSpeed = car.maxSpeed;

//   car.maxSpeed = 5;
// }

// class Car {
//   final _maxSpeed;
//   String color;
//   bool isElectric;

//   Car(int maxSpeed, this.color, this.isElectric) : _maxSpeed = maxSpeed;

//! // Getter - повертає значення. Ф-я яка повертає якесь значення
//! // Setter - змінює значення. Ф-я яка дозволяє змінити значення в середині обьекта

//   // get для ф-ї яка не має аргументів (int get maxSpeed {return _maxSpeed;})
//   // Обьекти можуть мати getter та setter
//   // Getter
//   int get maxSpeed => _maxSpeed;

//   // Setter
//   void set maxSpeed(int speed) {
//     _maxSpeed = speed;
//   }

//   int hoursToKyiv(int distance) {
//     return distance ~/ _maxSpeed;
//   }
// }

//TODO - НАСЛІДУВАННЯ

