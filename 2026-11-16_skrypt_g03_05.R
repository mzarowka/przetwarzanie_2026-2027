# Libraries
library(tidyverse)

# Operacje na wierszach - dplyr::filter() oraz od dplyr 1.1 filter_out()

# Dane Star Wars
swars <- starwars

# Wybór na podstawie jednego warunku
# Wzrost postaci równy 182 cm
dplyr::filter(swars, height == 182)

# Wszystkie postaci poniżej lub równe 70 cm wzrostu
dplyr::filter(swars, height <= 70)

# Wszystkie postaci o wzroście poniżej 70 cm lub o wzroście powyżej 220
dplyr::filter(swars, height < 70 | height > 220)

# To da błąd
dplyr::filter(swars, height < 70 & height > 220)

# Wybór z "i" dla dwóch warunków
# Wybierz postaci o wzroście powyżej 200 i masie poniżej 100
dplyr::filter(swars, height > 200 & mass < 100)

# & jest równoznaczne z przecinkiem
dplyr::filter(swars, height > 200, mass < 100)

# Wybór z wektora wartości
# Operator %in%

# Definicja wektora z gatunkami
gatunki <- c("Human", "Droid")

# Wybór z kolumny species z operatorem %in%
dplyr::filter(swars, species %in% gatunki)

# Wybór z kolumny species według wartości oczekiwanej
dplyr::filter(swars, species == "Human" | species == "Droid")

# To zwróci prawdopodobnie niewłaściwą ramkę
dplyr::filter(swars, species == gatunki)

# Zaprzeczenie
# Wszystkie pozostałe gatunki
dplyr::filter(swars, !(species %in% gatunki))

# Wartości NA
colSums(is.na(swars))

# Zachowanie postaci bez wzrostu
dplyr::filter(swars, is.na(height))

# Postaci które mają masę
dplyr::filter(swars, !is.na(mass))

# Postaci, które mają zarówno mase i wzrost
dplyr::filter(swars, !is.na(mass) & !is.na(height))

# Jak porzucić wszystkie NA według kolumn lub całej ramki danych
# tidyr::drop_na()

# Wyfiltrowanie wszystkich NA w całej ramce danych swars
tidyr::drop_na(swars)

# Postaci, które mają masę i wzrost
tidyr::drop_na(swars, mass, height)

# Postaci, które wzrost poniżej 100 cm LUB o nieznanym wzroście
# To zachowa wartości NA
dplyr::filter(swars, height < 100 | is.na(height))

# To porzuci wartości NA
dplyr::filter(swars, height < 100)

# Zaprzeczenie filtrowania
# dplyr::filter_out()
# Pozostaw wszystkie postaci, których wzrost NIE jest mniejszy równy 70 cm
dplyr::filter_out(swars, height <= 70)

# Pozostaw wszystkie postaci, których wzrost NIE jest mniejszy równy 70 cm z użyciem filter
dplyr::filter(swars, !(height <= 70))

# Usunięcie (wyfiltrowanie out) postaci, które są wysokie (powyżej 200) i lekkie (poniżej 100) jednocześnie
dplyr::filter_out(swars, height > 200, mass < 100)

# Usunięcie postaci bardzo niskie (poniżej 70) lub bardzo wysokie (powyżej 220)
dplyr::filter_out(swars, height < 70 | height > 220)

# dplyr::when_any()
# Usunięcie postaci bardzo niskie (poniżej 70) lub bardzo wysokie (powyżej 220)
dplyr::filter_out(swars, dplyr::when_any(height < 70, height > 220))

# Zapis LUB czyli | -> when_any
# Zapis I czyli & -> when_all
