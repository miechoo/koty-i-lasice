// nasz program tworzy trzy obiekty klasy Kot
// każdy z kotów przedstawia się
void main() {
  // kot pierwszy nazywa się Mruczek
  Kot kot1 = Kot('Mruczek');
  // kot pierwszy przedstawia się
  kot1.przedstawSie();

  // kot drugi nazywa się Dachowiec
  Kot kot2 = Kot('Dachowiec');
  // kot drugi przedstawia się
  kot2.przedstawSie();

  // kot trzeci nazywa się Futrzak
  Kot kot3 = Kot('Futrzak');
  // kot trzeci przedstawia się
  kot3.przedstawSie();
}

// klasa Kot ogólnie opisuje, z czego kot się składa i co robi
class Kot {
  // kot składa się z imienia
  String imie = '';

  // imię kotu jest nadawane tutaj - to specjana funkcja, konstruktor.
  // Funkcja ta ma taką samą nazwę jak nazwa klasy.
  // Konstruktor przyjmuje jeden parametr - inicjalne imię kota. Na przykład Kot('Futrzak').
  Kot(String inicjalneImie) {
    imie = inicjalneImie;
  }

  // procedura ta jest publiczną metodą klasy Kot.
  // Wyświetla napis i wykonuje kolejną procedurę _przedstawSieOgolnie()
  void przedstawSie() {
    print('Mrrrrrr.... jestem $imie');
    _przedstawSieOgolnie();
  }

  // Procedura ta jest procedurą klasy Kot. Wyświetla napis.
  // Prywatna procedura może być użyta tylko z innej procedury.
  // Nie można na przykład wykonać kot3._przedstawSieOgolnie().
  void _przedstawSieOgolnie() {
    print('Mrrrrrr.... jestem kocurem');
  }
}
