// to jest gra

// niestety nie da sie jej uruchomić na stronie darpard.dev, bo ta strona
// nie obsługuje wprowadzania danych do gry w trakcie gry

import 'dart:math';
import 'dart:io';

void main(List<String> arguments) {
  Gra gra = Gra();
  gra.uruchom();
}

class Gra {
  static const int ilePartii = 3;
  int _wynikGry = 0;
  void uruchom() {
    for (int i = 0; i < 3; i++) {
      Partia aktualnaPartia = Partia();
      _wynikGry += aktualnaPartia.uruchom();
    }
    print('Ukończyłeś grę z wynikiem $_wynikGry. Gratulacje!');
    print('Naciśnij dowolny klawisz żeby zakończyć.');
    stdin.readByteSync();
  }
}

class Partia {
  late final int _tajemniczaLiczba;
  int _liczbaProb = 1;
  bool czyZgadl = false;
  int uruchom() {
    print('------nowa partia----------');
    _tajemniczaLiczba = Random().nextInt(10);
    while (!czyZgadl) {
      print('Mam na myśli jakąś liczbę w przedziale od 0 do 9');
      print('Czy gadniesz jaką?');
      stdout.write('Wpisz liczbę i naciśnij enter: ');
      String wprowadzonyNapis = stdin.readLineSync() ?? '';
      if (_tajemniczaLiczba == int.parse(wprowadzonyNapis)) {
        print(
            'Brawo, chodziło o liczbę $_tajemniczaLiczba. Zgadłeś w $_liczbaProb liczbie prób.');
        czyZgadl = true;
      } else if (_tajemniczaLiczba > int.parse(wprowadzonyNapis)) {
        print('Podana przez Ciebie liczba jest za mała. Spróbuj jeszcze raz.');
        _liczbaProb++;
      } else {
        print('Podana przez Ciebie liczba jest za duża. Spróbuj jeszcze raz.');
        _liczbaProb++;
      }
    }
    return _liczbaProb;
  }
}
