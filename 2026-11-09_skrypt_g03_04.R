# Paczki
library(tidyverse)

# Wczytanie danych iris
iris <- iris

# Wybór kolumn, które zaczynają się na Petal i zawierają "dth"
dplyr::select(iris, dplyr::starts_with("Petal") & dplyr::contains("dth"))

# Wybór kolumn, które zaczynają się na Petal lub zawieraja "dth"
dplyr::select(iris, starts_with("Petal") | dplyr::contains("dth"))

# Gwiezdne Wojny
swars <- starwars

# Zdefiniowanie własne funkcji
anonim <- function(x){
  x + 1
}

# Wektor liczb
roman <- c(4, 7, 9, 2, 1, 0)

# Nowy wektor, mutacja romana z użyciem anonima
anonim(roman)

# Wybór kolumn numerycznych za pomocą funkcji (anonimowej)
# Wykorzysywanie funkcji do sprawdzenia typu i warunków spełnianych przez kolumny
# dplyr::where()
dplyr::select(swars, dplyr::where(\(kolumna) is.numeric(kolumna)))

# Funkcja jak wyżej, nazwana
czynumeric <- function(x){
  is.numeric(x)
}

# Wybór wszystkich kolumn tekstowych
dplyr::select(swars, dplyr::where(\(x) is.character(x)))

# Wybór kolumn tekstowych z "r" w nazwie
dplyr::select(swars, dplyr::where(\(kolumna) is.character(kolumna)) & dplyr::contains("r"))

# Wybór kolumn numerycznych, w których średnia jest niższa niż 100
# Zapis "i" w postaci skalarnej (leniwej)
dplyr::select(swars, dplyr::where(\(kolumna) is.numeric(kolumna) && mean(kolumna, na.rm = TRUE) < 100))

# Wybór kolumn tekstowych i liczbowych, które zaczynają się na "h"
# Połączenie operatorów skalarnych i wektorowych
dplyr::select(swars, dplyr::where(\(kolumna) is.character(kolumna) || is.numeric(kolumna)) & dplyr::starts_with("h"))

# Wybór kolumn numerycznych, w których średnia jest wyższa niż 70 i niższa niż 90
# Operator skalarny czy wektorowy?
dplyr::select(swars, dplyr::where(\(kolumna) is.numeric(kolumna) && mean(kolumna, na.rm = TRUE) > 70 && mean(kolumna, na.rm = TRUE) < 90))

# Używanie wcześniej zdefiniowanych nazw
x <- c("name", "mass")

x_z_bledem <- c("name", "naaaaame", "mass")

# Wybór z select na podstawie wektora nazw
# To zadziała
dplyr::select(swars, dplyr::all_of(x))

# To nie zadziała
dplyr::select(swars, dplyr::all_of(x_z_bledem))

# To zadziała
dplyr::select(swars, dplyr::any_of(x_z_bledem))
