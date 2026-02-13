module Helper exposing (..)

import Html exposing (Html, div, h1, ul, li, text)


-- registro videogame
type alias Videogame =
    { title : String
    , releaseYear : Int
    , available : Bool
    , downloads : Int
    , genres : List String
    }


type alias Computer =
    { ram : String
    , model : String
    , brand : String
    , screenSize : String
    }


-- lista con al menos dos videojuegos
videogames : List Videogame
videogames =
    [ { title = "Fornite"
      , releaseYear = 2016
      , available = True
      , downloads = 1500000
      , genres = [ "Action", "Shooter" ]
      }
    , { title = "Zelda"
      , releaseYear = 2017
      , available = True
      , downloads = 7600000
      , genres = [ "Action", "Adventure" ]
      }
    ]


-- variable myLaptop 
myLaptop : Computer
myLaptop =
    { ram = "16GB"
    , model = "MacBook Pro"
    , brand = "Apple"
    , screenSize = "14 inches"
    }


-- genero de los viedojuegos
getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres games =
    List.map .genres games


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