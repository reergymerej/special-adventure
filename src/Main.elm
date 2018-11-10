module Main exposing (main)

import Browser
import Html exposing (..)


main =
    Browser.sandbox
        { init = init
        , update = update
        , view = view
        }


type alias Model =
    List String


init =
    [ "red"
    , "orange"
    , "yellow"
    , "green"
    , "blue"
    , "indigo"
    , "violet"
    ]


update : msg -> Model -> Model
update msg model =
    model


renderItem : String -> String -> Html msg
renderItem prefix item =
    li [] [ text (prefix ++ item) ]


view : Model -> Html msg
view model =
    ul [] (List.map (renderItem "Gruffalo: ") model)
