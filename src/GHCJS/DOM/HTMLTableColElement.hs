{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLTableColElement
       (ghcjs_dom_html_table_col_element_set_align,
        htmlTableColElementSetAlign,
        ghcjs_dom_html_table_col_element_get_align,
        htmlTableColElementGetAlign,
        ghcjs_dom_html_table_col_element_set_ch, htmlTableColElementSetCh,
        ghcjs_dom_html_table_col_element_get_ch, htmlTableColElementGetCh,
        ghcjs_dom_html_table_col_element_set_ch_off,
        htmlTableColElementSetChOff,
        ghcjs_dom_html_table_col_element_get_ch_off,
        htmlTableColElementGetChOff,
        ghcjs_dom_html_table_col_element_set_span,
        htmlTableColElementSetSpan,
        ghcjs_dom_html_table_col_element_get_span,
        htmlTableColElementGetSpan,
        ghcjs_dom_html_table_col_element_set_v_align,
        htmlTableColElementSetVAlign,
        ghcjs_dom_html_table_col_element_get_v_align,
        htmlTableColElementGetVAlign,
        ghcjs_dom_html_table_col_element_set_width,
        htmlTableColElementSetWidth,
        ghcjs_dom_html_table_col_element_get_width,
        htmlTableColElementGetWidth, HTMLTableColElement,
        IsHTMLTableColElement, castToHTMLTableColElement,
        gTypeHTMLTableColElement, toHTMLTableColElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"align\"] = $2;"
        ghcjs_dom_html_table_col_element_set_align ::
        JSRef HTMLTableColElement -> JSString -> IO ()
 
htmlTableColElementSetAlign ::
                            (IsHTMLTableColElement self, ToJSString val) =>
                              self -> val -> IO ()
htmlTableColElementSetAlign self val
  = ghcjs_dom_html_table_col_element_set_align
      (unHTMLTableColElement (toHTMLTableColElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"align\"]"
        ghcjs_dom_html_table_col_element_get_align ::
        JSRef HTMLTableColElement -> IO JSString
 
htmlTableColElementGetAlign ::
                            (IsHTMLTableColElement self, FromJSString result) =>
                              self -> IO result
htmlTableColElementGetAlign self
  = fromJSString <$>
      (ghcjs_dom_html_table_col_element_get_align
         (unHTMLTableColElement (toHTMLTableColElement self)))
 
foreign import javascript unsafe "$1[\"ch\"] = $2;"
        ghcjs_dom_html_table_col_element_set_ch ::
        JSRef HTMLTableColElement -> JSString -> IO ()
 
htmlTableColElementSetCh ::
                         (IsHTMLTableColElement self, ToJSString val) =>
                           self -> val -> IO ()
htmlTableColElementSetCh self val
  = ghcjs_dom_html_table_col_element_set_ch
      (unHTMLTableColElement (toHTMLTableColElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"ch\"]"
        ghcjs_dom_html_table_col_element_get_ch ::
        JSRef HTMLTableColElement -> IO JSString
 
htmlTableColElementGetCh ::
                         (IsHTMLTableColElement self, FromJSString result) =>
                           self -> IO result
htmlTableColElementGetCh self
  = fromJSString <$>
      (ghcjs_dom_html_table_col_element_get_ch
         (unHTMLTableColElement (toHTMLTableColElement self)))
 
foreign import javascript unsafe "$1[\"chOff\"] = $2;"
        ghcjs_dom_html_table_col_element_set_ch_off ::
        JSRef HTMLTableColElement -> JSString -> IO ()
 
htmlTableColElementSetChOff ::
                            (IsHTMLTableColElement self, ToJSString val) =>
                              self -> val -> IO ()
htmlTableColElementSetChOff self val
  = ghcjs_dom_html_table_col_element_set_ch_off
      (unHTMLTableColElement (toHTMLTableColElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"chOff\"]"
        ghcjs_dom_html_table_col_element_get_ch_off ::
        JSRef HTMLTableColElement -> IO JSString
 
htmlTableColElementGetChOff ::
                            (IsHTMLTableColElement self, FromJSString result) =>
                              self -> IO result
htmlTableColElementGetChOff self
  = fromJSString <$>
      (ghcjs_dom_html_table_col_element_get_ch_off
         (unHTMLTableColElement (toHTMLTableColElement self)))
 
foreign import javascript unsafe "$1[\"span\"] = $2;"
        ghcjs_dom_html_table_col_element_set_span ::
        JSRef HTMLTableColElement -> Int -> IO ()
 
htmlTableColElementSetSpan ::
                           (IsHTMLTableColElement self) => self -> Int -> IO ()
htmlTableColElementSetSpan self val
  = ghcjs_dom_html_table_col_element_set_span
      (unHTMLTableColElement (toHTMLTableColElement self))
      val
 
foreign import javascript unsafe "$1[\"span\"]"
        ghcjs_dom_html_table_col_element_get_span ::
        JSRef HTMLTableColElement -> IO Int
 
htmlTableColElementGetSpan ::
                           (IsHTMLTableColElement self) => self -> IO Int
htmlTableColElementGetSpan self
  = ghcjs_dom_html_table_col_element_get_span
      (unHTMLTableColElement (toHTMLTableColElement self))
 
foreign import javascript unsafe "$1[\"vAlign\"] = $2;"
        ghcjs_dom_html_table_col_element_set_v_align ::
        JSRef HTMLTableColElement -> JSString -> IO ()
 
htmlTableColElementSetVAlign ::
                             (IsHTMLTableColElement self, ToJSString val) =>
                               self -> val -> IO ()
htmlTableColElementSetVAlign self val
  = ghcjs_dom_html_table_col_element_set_v_align
      (unHTMLTableColElement (toHTMLTableColElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"vAlign\"]"
        ghcjs_dom_html_table_col_element_get_v_align ::
        JSRef HTMLTableColElement -> IO JSString
 
htmlTableColElementGetVAlign ::
                             (IsHTMLTableColElement self, FromJSString result) =>
                               self -> IO result
htmlTableColElementGetVAlign self
  = fromJSString <$>
      (ghcjs_dom_html_table_col_element_get_v_align
         (unHTMLTableColElement (toHTMLTableColElement self)))
 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        ghcjs_dom_html_table_col_element_set_width ::
        JSRef HTMLTableColElement -> JSString -> IO ()
 
htmlTableColElementSetWidth ::
                            (IsHTMLTableColElement self, ToJSString val) =>
                              self -> val -> IO ()
htmlTableColElementSetWidth self val
  = ghcjs_dom_html_table_col_element_set_width
      (unHTMLTableColElement (toHTMLTableColElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_html_table_col_element_get_width ::
        JSRef HTMLTableColElement -> IO JSString
 
htmlTableColElementGetWidth ::
                            (IsHTMLTableColElement self, FromJSString result) =>
                              self -> IO result
htmlTableColElementGetWidth self
  = fromJSString <$>
      (ghcjs_dom_html_table_col_element_get_width
         (unHTMLTableColElement (toHTMLTableColElement self)))
#else
module GHCJS.DOM.HTMLTableColElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLTableColElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLTableColElement
#endif
