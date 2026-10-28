# Ładowanie paczek
library("tidyverse")

# Utworzenie wektora danych
c(1, 67, 5, 4, 10, 20)

# Utworzenie wektora i przypisanie do obiektu
wektor <- c(1, 67, 5, 4, 10.47, 20)

# Wektor z jednym elementem, tekst
marchewka <- "kotek"

# Sprawdzenie struktury obiektu
str(wektor)

str(marchewka)

# Sprawdzanie typu obiektu
is.numeric(wektor)

is.numeric(marchewka)

# Wymuszenie (zmiana) typu
as.character(wektor)

as.numeric(marchewka)

# Nowy wektor z numerami
dzik <- c(0.5, 111, 7, 3, 1, NA)

# Policz średnią arytmetyczną z wektora a potem z dzika
mean(wektor)

mean(dzik)

# Średnia z dzika bez NA
mean(dzik, na.rm = TRUE)

# Wczytywanie danych z pliku
readr::read_csv("C:/GitHub/teaching/przetwarzanie_2026-2027/annual-enterprise-survey-2025-financial-year-provisional-size-bands.csv")

warchlaczki <- readr::read_csv("annual-enterprise-survey-2025-financial-year-provisional-size-bands.csv")

# Wczytywanie z www
readr::read_csv("https://www.stats.govt.nz/assets/Uploads/Annual-enterprise-survey/Annual-enterprise-survey-2025-financial-year-provisional/Download-data/annual-enterprise-survey-2025-financial-year-provisional-size-bands.csv")

# Indeksowanie
# Wskazywanie pozycji w wektorze o jednym wymiarze
dzik[2]

# Wskazanie pozycji numer 2 i numer 5 w dziku
dzik[c(2, 5)]

moje_szalone_cyferki <- c(2, 5)

dzik[moje_szalone_cyferki]
