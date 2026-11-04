# Paczki
library(tidyverse)
library(palmerpenguins)

# Załadowanie danych pingwiny i irysy
pingwiny <- palmerpenguins::penguins

iris <- iris

# Indeksowanie ramek danych
# Wybór wszystkich wierszy i jednej kolumny
pingwiny[, 2]

# Wybór jednego, dowolnego wiersza i wszystkich kolumn
pingwiny[2, ]

# Wybór więcej niż jednego wiersza i jednej dowolonej kolumny
pingwiny[c(2, 3), 2]

# Sekwencja wartości całkowitych, od-do
4:8

# Sekwencja wartości od do, arbitralny skok
seq(21, 100, 2)

# Sekwencja malejąca
seq(100, -200, -25)

# Wybór wierszy od do, kolumna 1
pingwiny[7:15, 1]

# Wybór kolumny według nazwy - island
pingwiny[, "island"]

# Wybór kolumny według nazwy - island
pingwiny$island

# Mediana Petal.Length z danych iris
median(iris[, "Petal.Length"])
# Równoważne
median(iris[, 3])

# Mediana Petal.Length z danych iris tylko dla gatunku setosa
median(iris[1:50, "Petal.Length"])

median(iris[iris$Species == "setosa", "Petal.Length"])

# Tworzenie nowych kolumn
# Przykład - dodawanie dwóch kolumn, wynik w nowej kolumnie
suma <- iris$Sepal.Width + iris[, 1]

iris$suma <- iris$Sepal.Width + iris[, 1]

iris[, "roznica"] <- iris$Sepal.Width - iris[, 1]

# Nadpisanie istniejącej kolumny w ramce danych
iris$suma <- log(iris[, "suma"])

# Pakiet dplyr (część tidyverse)
# dplyr::select - wybieranie kolumn
# Wybór według nazwy, pingwiny - kolumna island
dplyr::select(.data = pingwiny, island)

# Wybór według nazwy, kilka kolumn
dplyr::select(pingwiny, island, year, species)

# Wybór według nazwy, kilka kolumn
dplyr::select(pingwiny, c(island, year, species))

# Wybór negatywny według nazwy - jedna kolumna, species
dplyr::select(pingwiny, -species)

# Wybór negatywny według nazwy, wiele kolumn
dplyr::select(pingwiny, -species, -island)
# Zapis równoważny
dplyr::select(pingwiny, -c(species, island))

# Wybór za pomocą pozycji
dplyr::select(pingwiny, 4)

# Wybór kolumn za pomocą zakresu, wszystko od species do bill_length_mm
dplyr::select(pingwiny, species:bill_length_mm)
# Równoważne
dplyr::select(pingwiny, 1:3)

# Wybieranie po nazwie, początek (prefix) nazwy
# Wszystko dotyczące "bill"
dplyr::select(pingwiny, dplyr::starts_with("bill"))

# Wybieranie po nazwie, konieć (suffix) nazwy
# Wszystko co kończy się "_mm"
dplyr::select(pingwiny, dplyr::ends_with("mm"))

# Wszystko co zawier "length"
dplyr::select(pingwiny, dplyr::contains("length"))

# Wybór gatunku, wyspy, wszystkiego co dotyczy dzioba, oraz kończy sie na "g"
dplyr::select(pingwiny, species, island, dplyr::starts_with("bill"), dplyr::ends_with("g"))

# Definiowanie nazw do ponownego użycia
nazwy <- c("Sepal.Length", "Petal.Length")

# Nazwy zdefiniowane z celowym błędem
nazwy_z_bledem <- c("Sepal.Length", "Petal.Length", "ABCD")

# Wykorzystanie zdefiniowanych nazw w select - to zadziała
dplyr::select(iris, dplyr::all_of(nazwy))

# Wykorzystanie zdefiniowanych nazw w select - to NIE zadziała
dplyr::select(iris, dplyr::all_of(nazwy_z_bledem))

# Wykorzystanie zdefiniowanych nazw w select, z błędem - ZADZIAŁA
dplyr::select(iris, dplyr::any_of(nazwy_z_bledem))
