module Helper exposing (..)

import Html exposing (Html, div, h1, ul, li, text)

type alias Videogame = { title : String, releaseYear : Int, available : Bool, downloads : Int, genres : List String }
type alias Computer = { ram : String, model : String, brand : String, screenSize : String }

videogames : List Videogame
videogames =
    [ { title = "Fornite", releaseYear = 2016, available = True, downloads = 1500000, genres = [ "Action", "Shooter" ] }
    , { title = "Zelda", releaseYear = 2017, available = True, downloads = 7600000, genres = [ "Action", "Adventure" ] }
    ]

myLaptop : Computer
myLaptop = { ram = "16GB", model = "MacBook Pro", brand = "Apple", screenSize = "14 inches" }

add2 : Int -> Int -> Int
add2 x y = x + y

add3 : Float -> Float -> Float -> Float
add3 x y z = x + y + z

calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc x y op = op x y

languageNames : List { name : String, releaseYear : Int, currentVersion : String } -> List String
languageNames list = List.map .name list

onlyStudents : List { name : String, uType : String } -> List String
onlyStudents users =
    List.map (\u -> if u.uType == "Student" then u.name else "") users

getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres games = List.map .genres games

main : Html msg
main =
    div []
        [ h1 [] [ text "My laptop" ]
        , div []
            [ ul []
                [ li [] [ text ("Ram: " ++ myLaptop.ram) ]
                , li [] [ text ("Modelo: " ++ myLaptop.model) ]
                , li [] [ text ("Marca: " ++ myLaptop.brand) ]
                , li [] [ text ("Pulgadas: " ++ myLaptop.screenSize) ]
                ]
            ]
        ]