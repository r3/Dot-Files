-- Imports {{{

import XMonad
import Dzen
import System.Exit
import System.IO
import qualified XMonad.StackSet as W
import qualified Data.Map as M

-- actions
import XMonad.Actions.CycleWS
import XMonad.Actions.GridSelect

-- layouts
import XMonad.Layout.MultiToggle
import XMonad.Layout.MultiToggle.Instances

-- hooks
import XMonad.Hooks.DynamicLog hiding (dzen)
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.SetWMName
import XMonad.Hooks.UrgencyHook
import XMonad.Hooks.ICCCMFocus

-- }}}
-- The basics {{{

myTerminal      = "urxvtc --urgentOnBell"
myFocusFollowsMouse :: Bool
myFocusFollowsMouse = True
myBorderWidth   = 0
myModMask       = mod1Mask
myWorkspaces    = ["main","www","dev","etc"]
myNormalBorderColor = "#000000"
myFocusedBorderColor = "#000000"

myLogHook h = takeTopFocus >>
    (dynamicLogWithPP $ defaultPP
        { ppCurrent         = dzenColor "#2aa198" "" . pad
        , ppHidden          = dzenColor "#005555" "" . pad
        , ppHiddenNoWindows = dzenColor "#007777" "" . pad
        , ppLayout          = dzenColor "#005555" "" . pad
        , ppUrgent          = dzenColor "#ffffff" "" . pad . dzenStrip
        , ppTitle           = shorten 100
        , ppWsSep           = ""
        , ppOutput          = hPutStrLn h
    })

-- }}}
-- Key bindings {{{

myKeys conf@(XConfig {XMonad.modMask = modm}) = M.fromList $
 
    -- launch a terminal
    [ ((modm .|. shiftMask, xK_Return), spawn $ XMonad.terminal conf)

    -- Suspend/Hibernate
    , ((modm .|. shiftMask, xK_s     ), spawn "sudo netcfg -a; sudo pm-suspend")
    , ((modm .|. shiftMask, xK_h     ), spawn "sudo netcfg -a; sudo pm-hibernate")
 
    -- launch gmrun
    , ((modm,               xK_p     ), spawn "dmenu_run")

    -- close focused window
    , ((modm .|. shiftMask, xK_c     ), kill)

    -- Rotate through the available layout algorithms
    , ((modm,               xK_space ), sendMessage NextLayout)
 
    -- Reset the layouts on the current workspace to default
    , ((modm .|. shiftMask, xK_space ), setLayout $ XMonad.layoutHook conf)
 
    -- Resize viewed windows to the correct size
    , ((modm,               xK_n     ), refresh)
 
    -- Select an application from a grid
    , ((modm,               xK_e     ), goToSelected defaultGSConfig)

    -- Launch application from a menu
    , ((modm .|. shiftMask, xK_e     ), spawnSelected defaultGSConfig ["Keepassx", "Xfburn", "Screenshot", "LibreOffice", "Mathematica", "Eclipse", "Anki", "VirtualBox", "EarlyTranscendentals", "DwarfTherapist", "SoundSense", "Dorf"])

    -- Download email
    , ((mod4Mask,           xK_e     ), spawn "offlineimap")

    -- Unclutter handler
    , ((mod4Mask,           xK_w     ), spawn "unclutter -idle 2 -root -grab")
    , ((mod4Mask .|. shiftMask, xK_w ), spawn "killall -SIGKILL unclutter")

    -- Move focus to the next window
    , ((modm,               xK_Tab   ), windows W.focusDown)
 
    -- Move focus to the next window
    , ((modm,               xK_j     ), windows W.focusDown)
 
    -- Move focus to the previous window
    , ((modm,               xK_k     ), windows W.focusUp)
 
    -- Move focus to the master window
    , ((modm,               xK_m     ), windows W.focusMaster)
 
    -- Swap the focused window and the master window
    , ((modm,               xK_Return), windows W.swapMaster)
 
    -- Swap the focused window with the next window
    , ((modm .|. shiftMask, xK_j     ), windows W.swapDown)
 
    -- Swap the focused window with the previous window
    , ((modm .|. shiftMask, xK_k     ), windows W.swapUp)
 
    -- Shrink the master area
    , ((modm,               xK_h     ), sendMessage Shrink)
 
    -- Expand the master area
    , ((modm,               xK_l     ), sendMessage Expand)
 
    -- Push window back into tiling
    , ((modm,               xK_t     ), withFocused $ windows . W.sink)
 
    -- Increment the number of windows in the master area
    , ((modm,               xK_comma ), sendMessage (IncMasterN 1))
 
    -- Deincrement the number of windows in the master area
    , ((modm,               xK_period), sendMessage (IncMasterN (-1)))
 
    -- Toggle the status bar gap
    , ((modm,               xK_b    ), sendMessage ToggleStruts)

    -- Fullscreen Script
    , ((modm,               xK_f    ), sendMessage $ Toggle FULL)

    -- Invert Screen Colours
    , ((mod4Mask,           xK_Return), spawn "xcalib -i -a")

    -- Lock screen with xscreensaver
    , ((modm .|. shiftMask, xK_z    ), spawn "xscreensaver-command -lock")

    -- Control MPC on Saturn.Roler
    , ((mod4Mask,           xK_p    ), spawn "mpc -h saturn.roler -p 6001 toggle")
    , ((mod4Mask,           xK_h    ), spawn "mpc -h saturn.roler -p 6001 prev")
    , ((mod4Mask,           xK_j    ), spawn "mpc -h saturn.roler -p 6001 volume -10")
    , ((mod4Mask,           xK_k    ), spawn "mpc -h saturn.roler -p 6001 volume +10")
    , ((mod4Mask,           xK_l    ), spawn "mpc -h saturn.roler -p 6001 next")

    -- Program shortcuts
    , ((mod4Mask,           xK_z    ), spawn "luakit")
    , ((mod4Mask .|. shiftMask, xK_z), spawn "firefox")
    , ((mod4Mask,           xK_9    ), spawn "xbacklight -set 100")
    , ((mod4Mask,           xK_0    ), spawn "xbacklight -set 50")
    , ((mod4Mask,           xK_s    ), spawn "sleep 1; scrot -s")
    , ((mod4Mask .|. shiftMask, xK_0), spawn "xbacklight -set 0")

    -- Volume wheel and mute
    , ((0 , 0x1008ff11), spawn "amixer -q set Master 2- unmute")
    , ((0 , 0x1008ff13), spawn "amixer -q set Master 2+ unmute")
    , ((mod4Mask,           xK_m    ), spawn "amixer -q set Master mute")
    , ((mod4Mask .|. shiftMask, xK_m), spawn "amixer -q set Master unmute")
 
    -- Quit xmonad
    , ((modm .|. shiftMask, xK_q    ), io (exitWith ExitSuccess))
 
    -- Restart xmonad
    , ((modm,               xK_q    ), spawn "xmonad --recompile; xmonad --restart")
    , ((modm,               xK_Right), nextWS)
    , ((modm,               xK_Left ), prevWS)
    ]

    ++
 
    -- mod-[1..9], Switch to workspace N
    -- mod-shift-[1..9], Move client to workspace N
    [ ((m .|. modm, k), windows $ f i)
        | (i, k) <- zip (myWorkspaces) [xK_1 .. xK_8]
        , (f, m) <- [(W.greedyView, 0), (W.shift, shiftMask)]
    ]

-- }}}
-- Mouse bindings {{{

myMouseBindings (XConfig {XMonad.modMask = modm}) = M.fromList $
    [ ((modm, button1), (\w -> focus w >> mouseMoveWindow w
                                       >> windows W.shiftMaster))
    , ((modm, button2), (\w -> focus w >> windows W.shiftMaster))
    , ((modm, button3), (\w -> focus w >> mouseResizeWindow w
                                       >> windows W.shiftMaster))
    ]

myLayoutHook = id
    . mkToggle (single FULL)
    $ (Mirror tiled ||| tiled)
        where
            tiled = Tall nmaster delta ratio
            nmaster = 1
            ratio = 1/3
            delta = 3/100

myManageHook = composeAll
    [ className =? "gmrun" --> doFloat
    , className =? "uzbl-tabbed" --> doShift "www"
    , className =? "uzbl-browser" --> doShift "www"
    , className =? "feh" --> doShift "main" <+> doFloat
    , className =? "Gimp" --> doFloat
    , className =? "trayer" --> doIgnore
    , className =? "desktop_window" --> doIgnore
    , className =? "Wicd Network Manager" --> doFloat
    , className =? "Downloads" --> doFloat
    , className =? "Figure 1" --> doFloat
    ]

-- }}}
-- Bars {{{

myLeftBar :: DzenConf
myLeftBar = defaultDzenXft
    { width     = Just $ Pixels 600
    , fgColor   = Just "#888888"
    , bgColor   = Just "#000000"
    , font      = Just "DejaVu Sans Mono:size=10"
    }

myRightBar :: DzenConf
myRightBar = defaultDzenXft
    { xPosition = Just $ Pixels 600
    , fgColor   = Just "#005555"
    , bgColor   = Just "#000000"
    , width     = Just $ Pixels 680
    , font      = Just "DejaVu Sans Mono:size=10"
    , alignment = Just RightAlign
    }

-- }}}
-- Main {{{

main = do
    d <- spawnDzen myLeftBar
    {-spawn "conky -c ... | dzen2 -options"-}
    spawnToDzen "conky -c ~/.xmonad/conky" myRightBar
    xmonad $ withUrgencyHook NoUrgencyHook $ defaultConfig {
        logHook = myLogHook d,
        terminal = myTerminal,
        focusFollowsMouse = myFocusFollowsMouse,
        borderWidth = myBorderWidth,
        modMask = myModMask,
        startupHook = setWMName "LG3D",
        workspaces = myWorkspaces,
        normalBorderColor = myNormalBorderColor,
        focusedBorderColor = myFocusedBorderColor,
        keys = myKeys,
        mouseBindings = myMouseBindings,
        layoutHook = avoidStruts $ myLayoutHook,
        manageHook = manageDocks <+> myManageHook
    }
-- }}}
