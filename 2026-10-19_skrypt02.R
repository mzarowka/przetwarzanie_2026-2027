# Zaladowanie paczki
library("tidyverse")

# Pierwszy wektor, 5 liczb
gdansk <- c(997, 2, 1, 2009, 2023)

gdansk

# Sprawdzanie struktury
str(gdansk)

is.numeric(gdansk)

is.character(gdansk)

# Wymuszanie (zmiana) typu - koercja
gdansk_2 <- as.character(gdansk)

gdansk_2

str(gdansk_2)

is.numeric(gdansk_2)

is.character(gdansk_2)

# Wektor tekstowy
lawka <- c("niebieska", "drewniana", "krzywa")

is.logical(lawka)

# Wektor logiczny
wektor <- c(TRUE, FALSE, FALSE, TRUE)

wektor

is.logical(wektor)

sum(wektor)

# Nadpisanie wartości
lawka <- c("zielona", "metalowa", "prosta")

# Operacje matematyczne
# Bez przypisywania wartości
27^(1/3)

sqrt(9)

9^(1/2)

# Z przypisaniem
mediana <- median(gdansk)

# Puste wartosci
marchewka <- c(6, 60, 666, 6.6, 7L, NA)

median(marchewka)

median(x = marchewka, na.rm = TRUE)

# Pomijanie wartości NA
na.omit(marchewka)

# Wczytywanie danych csv
# Z internetu
dane_finansowe <- readr::read_csv("https://www.stats.govt.nz/assets/Uploads/Annual-enterprise-survey/Annual-enterprise-survey-2025-financial-year-provisional/Download-data/annual-enterprise-survey-2025-financial-year-provisional-size-bands.csv")

# Z dysku (tak nie robimy, bezwzlędnie źle)
dane_z_dysku_1 <- readr::read_csv("C:/GitHub/teaching/przetwarzanie_2026-2027/machine-readable-business-employment-data-june-2026-quarter .csv")

dane_z_dysku_2 <- readr::read_csv("machine-readable-business-employment-data-june-2026-quarter .csv")

# Indeksowanie wartości
# Czwarta pozycja w wektorze
gdansk[4]

# Nadpisywanie wartości
gdansk[5] <- c(2027)

# Wektor 1, 2, 3
wybory <- c(1, 2, 3)

gdansk[wybory]

gdansk[wektor]

# Indeksowanie ramki
# Z ramki dane finansowe wybrac kolumnę nr 2 i wiersz nr 4
dane_finansowe[4, 2]

# Z ramki dane finansowe wybrac kolumne 2 i 3, wszystkie wiersze
dane_finansowe[, c(2, 3)]

# Z ramki dane finansowe wybrac kolumny odpowiadające wektorowi "wybor" i pierwsze dwa wiersze
dane_finansowe[c(1, 2), wybory]

# Jedna specyficzna kolumna
dane_finansowe$year
