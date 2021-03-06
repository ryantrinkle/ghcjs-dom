{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLLegendElement
       (ghcjs_dom_html_legend_element_get_form, htmlLegendElementGetForm,
        ghcjs_dom_html_legend_element_set_align, htmlLegendElementSetAlign,
        ghcjs_dom_html_legend_element_get_align, htmlLegendElementGetAlign,
        HTMLLegendElement, IsHTMLLegendElement, castToHTMLLegendElement,
        gTypeHTMLLegendElement, toHTMLLegendElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"form\"]"
        ghcjs_dom_html_legend_element_get_form ::
        JSRef HTMLLegendElement -> IO (JSRef HTMLFormElement)
 
htmlLegendElementGetForm ::
                         (IsHTMLLegendElement self) => self -> IO (Maybe HTMLFormElement)
htmlLegendElementGetForm self
  = fmap HTMLFormElement . maybeJSNull <$>
      (ghcjs_dom_html_legend_element_get_form
         (unHTMLLegendElement (toHTMLLegendElement self)))
 
foreign import javascript unsafe "$1[\"align\"] = $2;"
        ghcjs_dom_html_legend_element_set_align ::
        JSRef HTMLLegendElement -> JSString -> IO ()
 
htmlLegendElementSetAlign ::
                          (IsHTMLLegendElement self, ToJSString val) => self -> val -> IO ()
htmlLegendElementSetAlign self val
  = ghcjs_dom_html_legend_element_set_align
      (unHTMLLegendElement (toHTMLLegendElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"align\"]"
        ghcjs_dom_html_legend_element_get_align ::
        JSRef HTMLLegendElement -> IO JSString
 
htmlLegendElementGetAlign ::
                          (IsHTMLLegendElement self, FromJSString result) =>
                            self -> IO result
htmlLegendElementGetAlign self
  = fromJSString <$>
      (ghcjs_dom_html_legend_element_get_align
         (unHTMLLegendElement (toHTMLLegendElement self)))
#else
module GHCJS.DOM.HTMLLegendElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLLegendElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLLegendElement
#endif
