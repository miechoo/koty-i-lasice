void main() {
  Kot kot1 = Kot('Mruczek');
  kot1.przedstawSie();

  Kot kot2 = Kot('Dachowiec');
  kot2.przedstawSie();

  Kot kot3 = Kot('Futrzak');
  kot3.przedstawSie();
}

class Kot {
  String imie = '';

  Kot(inicjalneImie) {
    imie = inicjalneImie;
  }

  void przedstawSie() {
    print('Mrrrrrr.... jestem kocurem');
    _przedstawSieImieniem();
  }

  void _przedstawSieImieniem() {
    print('Mrrrrrr.... jestem $imie');
  }
}
