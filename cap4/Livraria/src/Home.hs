{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes       #-}
module Home where

import Foundation
import Yesod.Core

getHomeR :: Handler Html
getHomeR = defaultLayout $ do
    setTitle "Minimal Multifile"
    [whamlet|
        <p>
            <a href=/pagina1> Acessar página 1, sem interpolador de rota
        <p>
            <a href=@{Pagina1R}> Acessar página 1, com interpolador de rota
        <p>
            <a href=@{AddR 5 7}>HTML addition
        <p>
            <a href=@{AddR 5 7}?_accept=application/json>JSON addition
    |]

postHomeR :: Handler Html
postHomeR = error "rota não implementanda"