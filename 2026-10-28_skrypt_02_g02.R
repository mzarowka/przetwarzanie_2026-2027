# Ładowanie paczek dodatkowych
library("tidyverse")

library("palmerpenguins")

# Tworzenie wektora liczb
c(2, 4, 67, 13, 0.573, 7, 6, 12)

# Tworzenie obiektu z wektorem liczby
pomidor <- c(2, 4, 67, 13, 0.573, 7, 6, 12)

pomidor

# Wektor tekstowy z jednym elementem
krzeslo <- "okno"

# Sprawdzenie struktury
str(pomidor)

str(krzeslo)

# Sprawdzenie konkretnego typu danych
is.numeric(pomidor)

is.character(pomidor)

# Wymuszanie typu, z numeric na character
as.character(pomidor)

# Funkcja w funkcji
# Policzenie średniej z pomidora
mean(pomidor)

# Średnia z pomidora, ale zaokrąglona do 2 miejsc dziesietnych
round(mean(pomidor), digits = 2)

# Mediana z pomidora, ale zaokrąglona do 2 miejsc dziesietnych a potem zaokrąglić do wartości całkowitych w dół
floor(round(median(pomidor), digits = 2))

# Obiekt z wartością pustą
obiekt <- c(1, 2, 3, NA)

# Policz odchylenie standardowe z obiekt
sd(obiekt, na.rm = TRUE)

# Pomijanie wartości NA
na.omit(obiekt)

# Wczytywanie danych z pliku
# Sciezka bezwzględna - ŹLE
dane <- readr::read_csv("C:/GitHub/teaching/przetwarzanie_2026-2027/annual-enterprise-survey-2025-financial-year-provisional-size-bands.csv")

# Sciezka wzgledna - DOBRZE
dane <- readr::read_csv("annual-enterprise-survey-2025-financial-year-provisional-size-bands.csv")

# Wczytaj dane z internetu
dane_i <- readr::read_csv("https://www.stats.govt.nz/assets/Uploads/Annual-enterprise-survey/Annual-enterprise-survey-2025-financial-year-provisional/Download-data/annual-enterprise-survey-2025-financial-year-provisional-size-bands.csv")

# Indeksowanie danych
# Trzecia wartość z wektora jednowymiarowego
pomidor[3]

# Wybierz wartości 2 i 5 z pomidora
pomidor[c(2, 5)]

moje_cyferki <- c(2, 5)

pomidor[moje_cyferki]

# Ramka danych, 5 wiersz i 7 kolumna
dane[5, 7]

# Ramka danych, 5 wiersz kolumny 3 i 5
dane[5, c(3, 5)]

# Ramka danych, wszystkie wiersze, kolumna 6
dane[, 6]

# Ramka danych, wszystkie wiersze, kolumna 6 po nazwie
dane[, "value"]

# Ramka danych, jedna kolumna
dane$value
