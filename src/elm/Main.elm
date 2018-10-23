module Main exposing (main)

import Alert exposing (alert)
import Browser
import Debug exposing (todo)
import Html exposing (Html, button, text)
import Html.Events exposing (onClick)


type alias Model =
    ()


type Msg
    = SendAlert


init : () -> ( Model, Cmd msg )
init () =
    ( (), Cmd.none )


view : model -> Html Msg
view model =
    button [ onClick SendAlert ] [ text "Click me!" ]


update : msg -> model -> ( model, Cmd msg )
update msg model =
    case SendAlert of
        SendAlert ->
            ( model, alert "Hello from Elm!" )


subscriptions : model -> Sub msg
subscriptions model =
    Sub.none


main : Program () Model Msg
main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
