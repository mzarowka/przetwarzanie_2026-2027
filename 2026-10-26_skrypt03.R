# Load libraries
library("dplyr")

# Load data
iris <- iris

# Indeksowanie, pierwsza kolumna
iris[, 1]

# Średnia z pierwszej kolumny
mean(iris[, 1])

# Zaokraglanie, jak wyzej, do 2 miejsc
round(mean(iris[, 1]), digits = 2)

# Zaokraglanie w górę i w dół
ceiling(mean(iris[, 1]))

floor(mean(iris[, 1]))

# Mediana z drugiej kolumny
median(iris$Sepal.Length)

# Nowa kolumna w ramce danych, na podstawie działania
# Suma, kolumna nr 4 + kolumna nr 3
iris$wynik_sumy <- iris$Petal.Width + iris[, 3]

# Nadpisanie kolumny numer 2
# logarytm naturalny z kolumny nr 2
iris[, 2] <- log(iris[, 2])

# Podsumowanie danych
summary(iris)

# Średnia długość płatka dla całej próby
mean(iris[, 3])
# Średnia długość płatka dla gatunku virginica
# Sposób 1
mean(iris[101:150, 3])

mean(iris[iris$Species == "virginica", 3])

# Początek pracy z pakietem dplyr ----
# Pierwsza funkcja z pakietu dplyr::select() - wybieranie kolumn

# Wybieranie za pomocą nazwy - jedna kolumna
# iris Petal.Length
iris$Petal.Length

iris[, 3]

iris[, "Petal.Length"]

# Wybieranie pojedyncznej kolumny po nazwie
dplyr::select(iris, Petal.Length)

# Wybranie więcej niż jedna kolumna po nazwie
dplyr::select(iris, Petal.Length, Sepal.Length)

# Wybieranie negatywne
dplyr::select(iris, -Species)

# Wybieranie negatywne, więcej niż jedna
# Odrzucamy Petal.Length i Species
dplyr::select(iris, -c(Petal.Length, Species))

# Zakres nazw
dplyr::select(iris, Sepal.Length:Petal.Width)

# Wybieranie za pomocą wyszukiwania nazwy
# Wybieranie za pomocą początku nazwy - Petal
dplyr::select(iris, dplyr::starts_with("Petal"))

# Wybieranie za pomocą końca - Length
dplyr::select(iris, dplyr::ends_with("Length"))

# Wybieranie za pomocą arbitralnego ciągu znaków
dplyr::select(iris, dplyr::contains("."))
