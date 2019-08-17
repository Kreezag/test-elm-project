module Msg exposing (Msg(..))


import Components.Modal as Modal


type Msg
    = UrlChange Url
    | ClickedLink UrlRequest
    | NavMsg Navbar.State
    | ModalMsg Modal.Msg