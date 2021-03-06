{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLPreElement
       (ghcjs_dom_html_pre_element_set_width, htmlPreElementSetWidth,
        ghcjs_dom_html_pre_element_get_width, htmlPreElementGetWidth,
        ghcjs_dom_html_pre_element_set_wrap, htmlPreElementSetWrap,
        ghcjs_dom_html_pre_element_get_wrap, htmlPreElementGetWrap,
        HTMLPreElement, IsHTMLPreElement, castToHTMLPreElement,
        gTypeHTMLPreElement, toHTMLPreElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        ghcjs_dom_html_pre_element_set_width ::
        JSRef HTMLPreElement -> Int -> IO ()
 
htmlPreElementSetWidth ::
                       (IsHTMLPreElement self) => self -> Int -> IO ()
htmlPreElementSetWidth self val
  = ghcjs_dom_html_pre_element_set_width
      (unHTMLPreElement (toHTMLPreElement self))
      val
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_html_pre_element_get_width ::
        JSRef HTMLPreElement -> IO Int
 
htmlPreElementGetWidth :: (IsHTMLPreElement self) => self -> IO Int
htmlPreElementGetWidth self
  = ghcjs_dom_html_pre_element_get_width
      (unHTMLPreElement (toHTMLPreElement self))
 
foreign import javascript unsafe "$1[\"wrap\"] = $2;"
        ghcjs_dom_html_pre_element_set_wrap ::
        JSRef HTMLPreElement -> Bool -> IO ()
 
htmlPreElementSetWrap ::
                      (IsHTMLPreElement self) => self -> Bool -> IO ()
htmlPreElementSetWrap self val
  = ghcjs_dom_html_pre_element_set_wrap
      (unHTMLPreElement (toHTMLPreElement self))
      val
 
foreign import javascript unsafe "($1[\"wrap\"] ? 1 : 0)"
        ghcjs_dom_html_pre_element_get_wrap ::
        JSRef HTMLPreElement -> IO Bool
 
htmlPreElementGetWrap :: (IsHTMLPreElement self) => self -> IO Bool
htmlPreElementGetWrap self
  = ghcjs_dom_html_pre_element_get_wrap
      (unHTMLPreElement (toHTMLPreElement self))
#else
module GHCJS.DOM.HTMLPreElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLPreElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLPreElement
#endif
