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
          [ 
             ((modm,               xK_o),      spawn "vimb -c ~/.vimbrc")
           , ((modm,               xK_Return), spawn $ XMonad.terminal conf)
           , ((modm,               xK_i ),     spawn "dmenu_run")
           , ((modm,               xK_z ),     spawn "i3lock -c 000000")
           , ((modm,               xK_u     ), kill)
          ]

-- *EOF*
