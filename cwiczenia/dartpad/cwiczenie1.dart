void main() {
  print('Dzień dobry, jest niedziela.');
  int mojaLiczba;
  mojaLiczba = 99;

  mojaLiczba = dodajDoSiebieDwieLiczby(-50, 43);
  wydrukujWynik(mojaLiczba);

  mojaLiczba = odejmijOdSiebieTrzyLiczby(6, 2, 1);
  wydrukujWynik(mojaLiczba);

  double mojaLiczbaNiecalkowita = podzielDwieLiczby(20, 30);
  wydrukujWynik(mojaLiczbaNiecalkowita);

  wydrukujWynik(pomnozDwieLiczby(7, 15));

  for (int licznik = 0; licznik < 100; licznik++) {
    mojaLiczba = pomnozDwieLiczby(2, licznik);
    wydrukujWynik(mojaLiczba);
  }
}

void wydrukujWynik(num wynik) {
  print('Obecny wynik to: $wynik');
}

int dodajDoSiebieDwieLiczby(int a, int b) {
  return a + b;
}

int odejmijOdSiebieTrzyLiczby(int a, int b, int c) {
  return a - b - c;
}

double podzielDwieLiczby(int a, int b) {
  return a / b;
}

int pomnozDwieLiczby(int a, int b) {
  return a * b;
}
