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


renderItem : Int -> String -> Html msg
renderItem index item =
    li [] [ text (String.fromInt index ++ ": " ++ item) ]


view : Model -> Html msg
view model =
    ul [] (List.indexedMap renderItem model)
