-- xmonad.hs
-- Mac Radigan

import XMonad
import qualified XMonad.StackSet as W
import qualified XMonad.Util.CustomKeys as C
import qualified Data.Map as M

main :: IO ()
main = xmonad $ defaultConfig
       { borderWidth        = 2
       , terminal           = "urxvt -bg black -fg white -vb +sb"
       , normalBorderColor  = "#880000"
       , focusedBorderColor = "#cc0000"
       , keys = C.customKeys delkeys inskeys
       }
    where
      delkeys :: XConfig l -> [(KeyMask, KeySym)]
      delkeys XConfig {modMask = modm} =
          [ (modm, xK_b) ]
      
      inskeys :: XConfig l -> [((KeyMask, KeySym), X ())]
      inskeys conf@(XConfig {modMask = modm}) =
          let font = "Terminus"
              color = "-fg white -bg black"
              urxvt = "urxvt -vb +sb" in 
          [ 
             ((modm,               xK_o),      spawn "vimb")
           , ((modm,               xK_Return), spawn $ XMonad.terminal conf)
           , ((modm,               xK_colon ), spawn "dmenu_run")
           , ((modm,               xK_u     ), kill)
          ]

-- *EOF*
