# Paczki
library(tidyverse)
library(palmerpenguins)

# Pingwinowe dane
data <- palmerpenguins::penguins

# Indeksowanie
# Wybór kolumny z rokiem, całej
# Wybór po pozycji
data[, 8]

# Wybór po nazwie
data[, "year"]

# Wybór po nazwie
data$year

# Wybór wierszy, 1, 6 i 329, wszystkie kolumny
data[c(1, 6, 329), ]

# Wybór od do - wartości całkowite, od 1 do 10
1:10

# Sekwencja o znanym kroku, od 0 do 20 co 4
seq(0, 20, 4)

# Średnia masa ciała dla gatunku Chinstrap
data$body_mass_g <- as.numeric(data$body_mass_g)
srednia_masa_chstrap <- mean(data[277:344, 6], na.rm = TRUE)

data$body_mass_g

# Dane iris
iris <- iris

# Srednia długość płatka w gatunku setosa
sredni_platek <- mean(iris[1:50, 3])

# Wybór gatunku setosa po nazwie
sredni_platek2 <- mean(iris[iris$Species == "setosa", 3])

# Tworzenie nowych kolumn lub ich modyfikacja
# Dodaj Petal.Len do Petal.Wid
iris$dodawanie <- iris$Petal.Length + iris$Petal.Width

# Początek prac z pakietem dplyr - "manipulacja" ramkami danych
# Wybór kolumny island - funkcja select
dplyr::select(.data = data, island)

# Wybór trzech kolumn w dowolnej kolejności
dplyr::select(data, year, species, bill_length_mm)

# Wybór kolumny z select po jej pozycji
dplyr::select(data, 4)

# Wybór zakresu kolumn, od do
dplyr::select(data, species:bill_depth_mm)

# Wybór negatywny
dplyr::select(data, -body_mass_g)

# Generalizacja wyboru według nazwy
# Wspólny początek nazwy - bill
dplyr::select(data, dplyr::starts_with("bill"))

# Z danych iris
dplyr::select(iris, dplyr::starts_with("Sepal"))

# Wybór końca nazwy zmiennej, _mm
dplyr::select(data, dplyr::ends_with("_mm"))

# Wybór arbitralnego ciągu znaków - "th"
dplyr::select(data, dplyr::contains("th"))

# Wybór wszystkiego poza "dziobem" (bill)
dplyr::select(data, -dplyr::starts_with("bill"))

# Wybór gatunku, wyspy, wszystkiego co dotyczy dzioba oraz kończy się na _g
dplyr::select(data, species, island, dplyr::starts_with("bill"), dplyr::ends_with("_g"))

# Wybór ze wcześniej zdefiniowanego zestawu nazw
nazwy <- c("island", "species")

nazwy_z_bledem <- c("island", "land", "species")

# Wybranie wszystkich nazw z zestawu
dplyr::select(data, dplyr::all_of(nazwy))

# Wybór wszystkich nazw z zestawu z błędem
dplyr::select(data, dplyr::all_of(nazwy_z_bledem))

# Wybór jakiejkolwiek nazwy z zestawu
dplyr::select(data, dplyr::any_of(nazwy_z_bledem))
