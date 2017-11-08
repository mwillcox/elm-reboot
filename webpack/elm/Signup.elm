module Signup exposing (..)

import Html exposing (Html, div, h1, form, text, input, button, beginnerProgram)
import Html.Attributes exposing (id, type_, value)
import SignupStyle exposing (..)

-- Model

type alias User =
    { name : String
    , email : String
    , password : String
    , loggedIn : Bool
    }

initialModel : User
initialModel =
    { name = "Michelle"
    , email = "mw@strava.com"
    , password = "123"
    , loggedIn = False
    }


-- View

view : User -> Html msg
view user =
    div []
        [ h1 [] [ text "Sign up" ]
        , form []
            [ div []
                [ text "Name"
                , input
                    [ id "name"
                    , type_ "text"
                    , value user.name
                    ]
                    []
                ]
            , div []
                [ text "Email"
                , input
                    [ id "email"
                    , type_ "email"
                    ]
                    []
                ]
            , div []
                [ text "Password"
                , input
                    [ id "password"
                    , type_ "password"
                    ]
                    []
                ]
            , div []
                [ button
                    [ type_ "submit" ]
                    [ text "Create my account" ]
                ]
            ]
        ]

-- Update

update : msg -> User -> User
update msg model =
    initialModel

-- Main

main : Program Never User msg
main =
    beginnerProgram
        { model = initialModel
        , view = view
        , update = update
        }