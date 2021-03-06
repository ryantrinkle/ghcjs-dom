{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.BarProp
       (ghcjs_dom_bar_prop_get_visible, barPropGetVisible, BarProp,
        IsBarProp, castToBarProp, gTypeBarProp, toBarProp)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "($1[\"visible\"] ? 1 : 0)"
        ghcjs_dom_bar_prop_get_visible :: JSRef BarProp -> IO Bool
 
barPropGetVisible :: (IsBarProp self) => self -> IO Bool
barPropGetVisible self
  = ghcjs_dom_bar_prop_get_visible (unBarProp (toBarProp self))
#else
module GHCJS.DOM.BarProp (
  module Graphics.UI.Gtk.WebKit.DOM.BarProp
  ) where
import Graphics.UI.Gtk.WebKit.DOM.BarProp
#endif
