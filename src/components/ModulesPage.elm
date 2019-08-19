module Components.ModulesPage exposing (..)

import Bootstrap.ListGroup as Listgroup
import Html exposing (..)


view : List (Html msg)
view =
    [ h1 [] [ text "Modules" ]
    , Listgroup.ul
        [ Listgroup.li [] [ text "Alert" ]
        , Listgroup.li [] [ text "Badge" ]
        , Listgroup.li [] [ text "Card" ]
        , Listgroup.li [] [ text "Footer" ]
        ]
    ]
