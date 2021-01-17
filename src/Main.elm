module Main exposing (..)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)



---- MODEL ----


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    ( {}, Cmd.none )



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    div [ class "container" ]
        [ h1 [] [ text "Kaito (umi, shiomiya) Suzuki" ]
        , p [] [ text "With a self-abused life. Gaming, occasionally engineering." ]
        , h3 [] [ text "info" ]
        , a [] [ text "16, November, 1998" ]
        , h3 [] [ text "Social" ]
        , div [ class "social" ]
            [ a [ href "https://www.twitter.com/shiomiyan" ]
                [ img
                    [ src "svg/twitter.svg"
                    ]
                    []
                ]
            , text " "
            , a [ href "https://www.github.com/shiomiyan" ]
                [ img
                    [ src "svg/github.svg"
                    ]
                    []
                ]
            , text " "
            , a [ href "https://www.shiomiya.com/" ]
                [ img
                    [ src "svg/blog.svg"
                    ]
                    []
                ]
            ]
        ]



---- PROGRAM ----


main : Program () Model Msg
main =
    Browser.element
        { view = view
        , init = \_ -> init
        , update = update
        , subscriptions = always Sub.none
        }
