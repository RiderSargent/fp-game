module Main exposing (..)

import Browser
import Html exposing (Html, button, div, text)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)



-- MAIN


main : Program () Model Msg
main =
    Browser.sandbox
        { init = init
        , update = update
        , view = view
        }



-- MODEL


type alias Model =
    Int


init : Model
init =
    0



-- VIEW


view : Model -> Html Msg
view model =
    div [ id "container" ]
        [ div [ class "draggable" ] [ text "Draggable Div" ]
        , div [ class "droppable" ] [ text "Droppable Div" ]
        , div [ class "droppable" ] [ text "Droppable Div" ]
        ]



-- UPDATE


type Msg
    = Increment
    | Decrement


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1
