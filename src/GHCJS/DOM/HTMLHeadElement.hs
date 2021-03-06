{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLHeadElement
       (ghcjs_dom_html_head_element_set_profile,
        htmlHeadElementSetProfile, ghcjs_dom_html_head_element_get_profile,
        htmlHeadElementGetProfile, HTMLHeadElement, IsHTMLHeadElement,
        castToHTMLHeadElement, gTypeHTMLHeadElement, toHTMLHeadElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"profile\"] = $2;"
        ghcjs_dom_html_head_element_set_profile ::
        JSRef HTMLHeadElement -> JSString -> IO ()
 
htmlHeadElementSetProfile ::
                          (IsHTMLHeadElement self, ToJSString val) => self -> val -> IO ()
htmlHeadElementSetProfile self val
  = ghcjs_dom_html_head_element_set_profile
      (unHTMLHeadElement (toHTMLHeadElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"profile\"]"
        ghcjs_dom_html_head_element_get_profile ::
        JSRef HTMLHeadElement -> IO JSString
 
htmlHeadElementGetProfile ::
                          (IsHTMLHeadElement self, FromJSString result) => self -> IO result
htmlHeadElementGetProfile self
  = fromJSString <$>
      (ghcjs_dom_html_head_element_get_profile
         (unHTMLHeadElement (toHTMLHeadElement self)))
#else
module GHCJS.DOM.HTMLHeadElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLHeadElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLHeadElement
#endif
