module Components.Modal exposing ( 
    Msg
    , Model
    , update
    , view
    , shown
    , hidden
    )

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Bootstrap.Modal as Modal
import Bootstrap.Grid as Grid
import Bootstrap.Grid.Col as Col




type alias Model =
    { modalVisibility : Modal.Visibility
    }

init : ( Model, Cmd Msg )
init =
    ( { modalVisibility = Modal.hidden }, Cmd.none )


type Msg
    = CloseModal
    | ShowModal


shown : Msg
shown =
    ShowModal


hidden : Msg
hidden =
    CloseModal


update : Msg -> Model -> ( Model, Cmd msg )
update msg model =
    case msg of
        CloseModal ->
            ( { model | modalVisibility = Modal.hidden }
            , Cmd.none
            )
        ShowModal ->
            ( { model | modalVisibility = Modal.shown }
            , Cmd.none
            )


view : Model -> Html Msg
view model =
    Modal.config CloseModal
        |> Modal.small
        |> Modal.h4 [] [ text "Getting started ?" ]
        |> Modal.body []
            [ Grid.containerFluid []
                [ Grid.row []
                    [ Grid.col
                        [ Col.xs6 ]
                        [ text "Col 1" ]
                    , Grid.col
                        [ Col.xs6 ]
                        [ text "Col 2" ]
                    ]
                ]
            ]
        |> Modal.view model.modalVisibility