module Main where
import Data.Char

contarPalabras ""= 1

contarPalabras (x:xs) = if x==' ' then 1 + contarPalabras xs else contarPalabras xs

mayuscula :: String -> String
mayuscula = unwords . map capitalize . words
    where capitalize (x:xs) = toUpper x : map toLower xs


main = do

    let texto = "un dia en la UCP"
    print ("la cantidad de palabras en el texto es " ++ show (contarPalabras texto))
    print ("El texto con cada letra en mayuscula es " ++ mayuscula texto)