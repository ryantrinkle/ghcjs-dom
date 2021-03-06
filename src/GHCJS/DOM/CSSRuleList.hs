{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CSSRuleList
       (ghcjs_dom_css_rule_list_item, cssRuleListItem,
        ghcjs_dom_css_rule_list_get_length, cssRuleListGetLength,
        CSSRuleList, IsCSSRuleList, castToCSSRuleList, gTypeCSSRuleList,
        toCSSRuleList)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"item\"]($2)"
        ghcjs_dom_css_rule_list_item ::
        JSRef CSSRuleList -> Word -> IO (JSRef CSSRule)
 
cssRuleListItem ::
                (IsCSSRuleList self) => self -> Word -> IO (Maybe CSSRule)
cssRuleListItem self index
  = fmap CSSRule . maybeJSNull <$>
      (ghcjs_dom_css_rule_list_item (unCSSRuleList (toCSSRuleList self))
         index)
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_css_rule_list_get_length :: JSRef CSSRuleList -> IO Word
 
cssRuleListGetLength :: (IsCSSRuleList self) => self -> IO Word
cssRuleListGetLength self
  = ghcjs_dom_css_rule_list_get_length
      (unCSSRuleList (toCSSRuleList self))
#else
module GHCJS.DOM.CSSRuleList (
  module Graphics.UI.Gtk.WebKit.DOM.CSSRuleList
  ) where
import Graphics.UI.Gtk.WebKit.DOM.CSSRuleList
#endif
