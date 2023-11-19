// to jest gra

// niestety nie da sie jej uruchomić na stronie dartpad.dev, bo ta strona
// nie obsługuje wprowadzania danych do gry w trakcie gry

// do komunikacji z programem użyłem biblioteki dart:io, której nie ma na stronie dartpad.dev
// dart:io posiada obiekt stdin, który służy do czytania danych
// dart:io posiada obiekt stdout, który służy do pisania danych (podobnie jak print())

// do wylosowania liczby użyłem biblioteki dart:math
// dart:math posiada funckję losującą Random().nextInt()

import 'dart:math';
import 'dart:io';

void main(List<String> arguments) {
  Gra gra = Gra();
  gra.uruchomGre();
}

class Gra {
  static const int _ilePartii = 3;
  int _wynikGry = 0;

  void uruchomGre() {
    for (int i = 0; i < _ilePartii; i++) {
      Partia aktualnaPartia = Partia();
      _wynikGry += aktualnaPartia.uruchomPartie();
    }

    print('Ukończyłeś grę z wynikiem $_wynikGry. Gratulacje!');
    print('Naciśnij dowolny klawisz żeby zakończyć.');
    stdin.readByteSync();
  }
}

class Partia {
  late final int _tajemniczaLiczba;
  int _liczbaProb = 1;
  bool _czyZgadl = false;

  int uruchomPartie() {
    print('------nowa partia----------');

    _tajemniczaLiczba = Random().nextInt(10);

    while (!_czyZgadl) {
      print('Mam na myśli jakąś liczbę w przedziale od 0 do 9');
      print('Czy gadniesz jaką?');

      stdout.write('Wpisz liczbę i naciśnij enter: ');
      String wprowadzonyNapis = stdin.readLineSync() ?? '';

      if (_tajemniczaLiczba == int.parse(wprowadzonyNapis)) {
        print(
            'Brawo, chodziło o liczbę $_tajemniczaLiczba. Zgadłeś w $_liczbaProb próbach.');
        _czyZgadl = true;
      } else if (_tajemniczaLiczba > int.parse(wprowadzonyNapis)) {
        print('Podana przez Ciebie liczba jest za mała. Spróbuj jeszcze raz.');
        _liczbaProb++;
        _czyZgadl = false;
      } else {
        print('Podana przez Ciebie liczba jest za duża. Spróbuj jeszcze raz.');
        _liczbaProb++;
        _czyZgadl = false;
      }
    }
    return _liczbaProb;
  }
}
