
// faybmak
// 1. space + shift does not work if kdb uses meta + space for layout switch

// 2. vs code needs the following mod since it looks at the key code directly
// {
//     "key": "[Backquote]",
//     "command": "type",
//     "args": { "text": "\t" },
//     "when": "editorTextFocus"
// },
// {
//     "key": "Tab",
//     "command": "type",
//     "args": { "text": "" },
//     "when": "editorTextFocus
// }

// 3. optionally use the following key syms
// XF86ScrollUp,
// XF86AudioPlay
// XF86AudioPause
// XF86AudioPrev
// XF86ScrollDown
// XF86ZoomOut
// XF86AudioMute
// XF86WWW
// Menu	
// XF86AudioStop
// XF86Calculator
// XF86Xfer
// XF86Mail
// XF86AudioNext
// XF86AudioRaiseVolume
// XF86ZoomIn
// XF86AudioLowerVolume

xkb_symbols "faybmak" {

    name[Group1]= "English (faybmak)";
    
    key.type[Group1] = "ONE_LEVEL";

    replace key <AC06> { [ Tab ] };
	replace key <BKSP> { [ BackSpace ] };

    replace key <RALT> { [ ISO_Level3_Shift ] };
    replace key <LCTL> { [ ISO_Level5_Shift ] };
    replace key <BKSL> { [ ISO_Level5_Shift ] };

    replace key <TAB> {
        symbols[Group1]= [ ISO_Level5_Shift ],
        actions[Group1]= [
        SetMods(modifiers=LevelThree+LevelFive) ] };

    replace key <RTSH> {
        symbols[Group1]= [ NoSymbol ],
        actions[Group1]= [
        SetMods(modifiers=Super) ] };

    replace key <AD12> {
        symbols[Group1]= [ NoSymbol ],
        actions[Group1]= [
        SetMods(modifiers=Shift) ] };
    
    replace key <CAPS> {
        symbols[Group1]= [ NoSymbol ],
        actions[Group1]= [
        SetMods(modifiers=Control) ] };

    // Main keys
    // Order of mods (defined by EIGHT_LEVEL_SEMIALPHABETIC) is:
    //           [               None,          Shift,            Cur,      Shift+Cur,            Sym,      Shift+Sym,        Cur+Sym,  Shift+Cur+Sym ]
    key.type[Group1] = "EIGHT_LEVEL_SEMIALPHABETIC";

    key <SPCE> {
    symbols[Group1]= [          space,     underscore,       NoSymbol,       NoSymbol,            bar,       NoSymbol,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        NoAction(),
        NoAction(),
        RedirectKey(key=<DELE>, clearmods=LevelThree, modifiers=Control),
        RedirectKey(key=<DELE>, clearmods=LevelThree, modifiers=Control),
        NoAction(),    
        NoAction(),
        RedirectKey(key=<AD02>, clearmods=LevelThree, clearmods=LevelFive, modifiers=Super),
        RedirectKey(key=<AD02>, clearmods=LevelThree, clearmods=LevelFive, modifiers=Super)] };

    key <TLDE> {
    symbols[Group1]= [       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        RedirectKey(key=<AC09>, modifiers=Super),
        RedirectKey(key=<AC09>, modifiers=Super)] };

    key <AE01> {
    symbols[Group1]= [       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        RedirectKey(key=<FK01>),
        RedirectKey(key=<FK01>),
        NoAction(),    
        NoAction(),
        NoAction(),    
        NoAction(),
        RedirectKey(key=<LEFT>, clearmods=LevelThree, clearmods=LevelFive, modifiers=Control, modifiers=Super),
        RedirectKey(key=<LEFT>, clearmods=LevelThree, clearmods=LevelFive, modifiers=Control, modifiers=Super)] };

    key <AE02> {
    symbols[Group1]= [       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        RedirectKey(key=<FK02>),
        RedirectKey(key=<FK02>),
        NoAction(),    
        NoAction(),
        NoAction(),    
        NoAction(),
        RedirectKey(key=<RGHT>, clearmods=LevelThree, clearmods=LevelFive, modifiers=Control, modifiers=Super),
        RedirectKey(key=<RGHT>, clearmods=LevelThree, clearmods=LevelFive, modifiers=Control, modifiers=Super)] };

    key <AE03> {
    symbols[Group1]= [       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        RedirectKey(key=<FK03>),
        RedirectKey(key=<FK03>),
        NoAction(),    
        NoAction(),
        NoAction(),    
        NoAction(),
        RedirectKey(key=<LSGT>, clearmods=LevelThree, modifiers=Control),
        RedirectKey(key=<LSGT>, clearmods=LevelThree, modifiers=Control)] };

    key <AE04> {
    symbols[Group1]= [       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        RedirectKey(key=<FK04>),
        RedirectKey(key=<FK04>),
        NoAction(),    
        NoAction(),
        NoAction(),    
        NoAction(),
        RedirectKey(key=<AD10>, clearmods=LevelThree, modifiers=Control),
        RedirectKey(key=<AD10>, clearmods=LevelThree, modifiers=Control)] };

    key <AE05> {
    symbols[Group1]= [       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        RedirectKey(key=<FK05>),
        RedirectKey(key=<FK05>),
        RedirectKey(key=<AD02>, clearmods=LevelThree, modifiers=Super),
        RedirectKey(key=<AD02>, clearmods=LevelThree, modifiers=Super)] };

    key <AE06> {
    symbols[Group1]= [       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        RedirectKey(key=<FK06>),
        RedirectKey(key=<FK06>),
        RedirectKey(key=<AB03>, clearmods=LevelThree, modifiers=Super),
        RedirectKey(key=<AB03>, clearmods=LevelThree, modifiers=Super)] };

    key <AE07> {
    symbols[Group1]= [       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        RedirectKey(key=<FK07>),
        RedirectKey(key=<FK07>),
        NoAction(),    
        NoAction() ] };

    key <AE08> {
    symbols[Group1]= [       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        RedirectKey(key=<FK08>),
        RedirectKey(key=<FK08>),
        NoAction(),    
        NoAction() ] };

    key <AE09> {
    symbols[Group1]= [       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        RedirectKey(key=<FK09>),
        RedirectKey(key=<FK09>),
        NoAction(),    
        NoAction() ] };

    key <AE10> {
    symbols[Group1]= [       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        RedirectKey(key=<FK10>),
        RedirectKey(key=<FK10>),
        NoAction(),    
        NoAction() ] };

    key <AE11> {
    symbols[Group1]= [       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        RedirectKey(key=<FK11>),
        RedirectKey(key=<FK11>),
        NoAction(),    
        NoAction() ] };

    key <AE12> {
    symbols[Group1]= [       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        RedirectKey(key=<FK12>),
        RedirectKey(key=<FK12>),
        NoAction(),    
        NoAction() ] };

    key <AD01> {
    symbols[Group1]= [              q,              Q,       NoSymbol,       NoSymbol,          colon,       NoSymbol,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        NoAction(),    
        NoAction(),
        RedirectKey(key=<ESC>, clearmods=LevelThree),
        RedirectKey(key=<ESC>, clearmods=LevelThree),
        NoAction(),    
        NoAction(),
        RedirectKey(key=<LEFT>, clearmods=LevelThree, clearmods=LevelFive, modifiers=Alt),
        RedirectKey(key=<LEFT>, clearmods=LevelThree, clearmods=LevelFive, modifiers=Alt) ] };

    key <AD02> {
    symbols[Group1]= [              w,              W,       NoSymbol,       NoSymbol,         exclam,       NoSymbol,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        NoAction(),    
        NoAction(),
        RedirectKey(key=<ESC>, clearmods=LevelThree),
        RedirectKey(key=<ESC>, clearmods=LevelThree),
        NoAction(),    
        NoAction(),
        RedirectKey(key=<RGHT>, clearmods=LevelThree, clearmods=LevelFive, modifiers=Alt),
        RedirectKey(key=<RGHT>, clearmods=LevelThree, clearmods=LevelFive, modifiers=Alt) ] };

    key <AD03> {
    symbols[Group1]= [              c,              C,       NoSymbol,       NoSymbol,          slash,      backslash,       NoSymbol,       NoSymbol ],
    actions[Group1]= [
        NoAction(),
        NoAction(),
        RedirectKey(key=<UP>, clearmods=LevelThree),
        RedirectKey(key=<UP>, clearmods=LevelThree),
        NoAction(),    
        NoAction(),
        RedirectKey(key=<PGUP>, clearmods=LevelThree, clearmods=LevelFive),
        RedirectKey(key=<PGUP>, clearmods=LevelThree, clearmods=LevelFive) ] };

    key <AD04> {
    symbols[Group1]= [              p,              P,       NoSymbol,       NoSymbol,      ampersand,       NoSymbol,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        NoAction(),    
        NoAction(),
        RedirectKey(key=<RGHT>, clearmods=LevelThree),
        RedirectKey(key=<RGHT>, clearmods=LevelThree),
        NoAction(),    
        NoAction(),
        RedirectKey(key=<HOME>, clearmods=LevelThree, clearmods=LevelFive, modifiers=Control),
        RedirectKey(key=<HOME>, clearmods=LevelThree, clearmods=LevelFive, modifiers=Control) ] };

    key <AD05> {
    symbols[Group1]= [              b,              B,       NoSymbol,       NoSymbol,        greater,       NoSymbol,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        NoAction(),    
        NoAction(),
        RedirectKey(key=<HOME>, clearmods=LevelThree, modifiers=Control),
        RedirectKey(key=<HOME>, clearmods=LevelThree, modifiers=Control),
        NoAction(),    
        NoAction(),
        RedirectKey(key=<END>, clearmods=LevelThree, clearmods=LevelFive, modifiers=Control),
        RedirectKey(key=<END>, clearmods=LevelThree, clearmods=LevelFive, modifiers=Control) ] };

    key <AD06> {
    symbols[Group1]= [       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        RedirectKey(key=<AC06>, modifiers=Shift),
        RedirectKey(key=<AC06>, modifiers=Shift) ] };

    key <AD07> {
    symbols[Group1]= [              j,              J,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        NoAction() ] };

    key <AD08> {
    symbols[Group1]= [              l,              L,       NoSymbol,       NoSymbol,              7,       NoSymbol,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        NoAction() ] };

    key <AD09> {
    symbols[Group1]= [              u,              U,    bracketleft,       NoSymbol,              8,       NoSymbol,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        NoAction() ] };

    key <AD10> {
    symbols[Group1]= [              y,              Y,   bracketright,       NoSymbol,              9,       NoSymbol,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        NoAction() ] };

    key <AD11> {
    symbols[Group1]= [       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,         period,       NoSymbol,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        RedirectKey(key=<BKSP>),
        RedirectKey(key=<BKSP>) ] };

    key <AC01> {
    symbols[Group1]= [              a,              A,       NoSymbol,       NoSymbol,          minus,       NoSymbol,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        NoAction(),
        NoAction(),
        RedirectKey(key=<HOME>, clearmods=LevelThree),
        RedirectKey(key=<HOME>, clearmods=LevelThree) ] };

    key <AC02> {
    symbols[Group1]= [              r,              R,       NoSymbol,       NoSymbol,           plus,       EuroSign,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        NoAction(),
        NoAction(),
        RedirectKey(key=<LEFT>, clearmods=LevelThree, modifiers=Control),
        RedirectKey(key=<LEFT>, clearmods=LevelThree, modifiers=Control),
        NoAction(),
        NoAction(),
        RedirectKey(key=<BKSP>, clearmods=LevelThree, clearmods=LevelFive, modifiers=Control),
        RedirectKey(key=<BKSP>, clearmods=LevelThree, clearmods=LevelFive, modifiers=Control) ] };

    key <AC03> {
    symbols[Group1]= [              s,              S,       NoSymbol,       NoSymbol,       asterisk,         ssharp,       NoSymbol,       NoSymbol ],
    actions[Group1]= [
        NoAction(),    
        NoAction(),
        RedirectKey(key=<DOWN>, clearmods=LevelThree),
        RedirectKey(key=<DOWN>, clearmods=LevelThree),
        NoAction(),    
        NoAction(),
        RedirectKey(key=<PGDN>, clearmods=LevelThree, clearmods=LevelFive),
        RedirectKey(key=<PGDN>, clearmods=LevelThree, clearmods=LevelFive) ] };

    key <AC04> {
    symbols[Group1]= [              t,              T,       NoSymbol,       NoSymbol,          equal,             at,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        NoAction(),
        NoAction(),
        RedirectKey(key=<RGHT>, clearmods=LevelThree, modifiers=Control),
        RedirectKey(key=<RGHT>, clearmods=LevelThree, modifiers=Control),
        NoAction(),
        NoAction(),
        RedirectKey(key=<DELE>, clearmods=LevelThree, clearmods=LevelFive, modifiers=Control),
        RedirectKey(key=<DELE>, clearmods=LevelThree, clearmods=LevelFive, modifiers=Control) ] };

    key <AC05> {
    symbols[Group1]= [              g,              G,       NoSymbol,       NoSymbol,          less,        NoSymbol,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        NoAction(),
        NoAction(),
        RedirectKey(key=<END>, clearmods=LevelThree),
        RedirectKey(key=<END>, clearmods=LevelThree) ] };

    //key <AC06> { };

    key <AC07> {
    symbols[Group1]= [              m,              M,       NoSymbol,       NoSymbol,     asciitilde,       NoSymbol,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        NoAction() ] };

    key <AC08> {
    symbols[Group1]= [              n,              N,      parenleft,       NoSymbol,              4,       NoSymbol,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        NoAction(),    
        NoAction(),
        NoAction(),    
        NoAction(),
        NoAction(),    
        NoAction(),
        RedirectKey(key=<AC06>, clearmods=LevelThree, clearmods=LevelFive, modifiers=Control, modifiers=Shift),
        RedirectKey(key=<AC06>, clearmods=LevelThree, clearmods=LevelFive, modifiers=Control, modifiers=Shift) ] };

    key <AC09> {
    symbols[Group1]= [              e,              E,     parenright,       NoSymbol,              5,       NoSymbol,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        NoAction() ] };

    key <AC10> {
    symbols[Group1]= [              i,              I,       NoSymbol,       NoSymbol,              6,       quotedbl,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        NoAction(),
        NoAction(),
        RedirectKey(key=<AC06>, clearmods=LevelThree),
        RedirectKey(key=<AC06>, clearmods=LevelThree),
        NoAction(),    
        NoAction(),
        RedirectKey(key=<AC06>, clearmods=LevelThree, clearmods=LevelFive, modifiers=Control),
        RedirectKey(key=<AC06>, clearmods=LevelThree, clearmods=LevelFive, modifiers=Control) ] };

    key <AC11> {
    symbols[Group1]= [              o,              O,       NoSymbol,       NoSymbol,     numbersign,       NoSymbol,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        NoAction(),
        NoAction(),
        RedirectKey(key=<DELE>, clearmods=LevelThree),
        RedirectKey(key=<DELE>, clearmods=LevelThree) ] };

    key <LSGT> {
    symbols[Group1]= [              z,              Z,       NoSymbol,       NoSymbol,       question,       NoSymbol,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        NoAction(),
        NoAction(),
        RedirectKey(key=<END>, clearmods=LevelThree, modifiers=Control),
        RedirectKey(key=<END>, clearmods=LevelThree, modifiers=Control) ] };

    key <AB01> {
    symbols[Group1]= [     odiaeresis,     Odiaeresis,      braceleft,       NoSymbol,    asciicircum,         degree,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        NoAction()] };

    key <AB02> {
    symbols[Group1]= [              f,              F,     braceright,       NoSymbol,        percent,        section,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        NoAction()] };

    key <AB03> {
    symbols[Group1]= [              d,              D,     apostrophe,       NoSymbol,      semicolon,          acute,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        NoAction()] };

    key <AB04> {
    symbols[Group1]= [              v,              V,       quotedbl,       NoSymbol,          comma,          grave,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        NoAction()] };

    key <AB05> {
    symbols[Group1]= [              x,              X,       NoSymbol,       NoSymbol,            bar,       NoSymbol,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        NoAction() ] };

    key <AB06> {
    symbols[Group1]= [         period,        NoSymbol,      NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        NoAction() ] };

    key <AB07> {
    symbols[Group1]= [              k,              K,       NoSymbol,       NoSymbol,              0,       NoSymbol,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        NoAction() ] };

    key <AB08> {
    symbols[Group1]= [              h,              H,       NoSymbol,       NoSymbol,              1,       NoSymbol,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        NoAction() ] };

    key <AB09> {
    symbols[Group1]= [     udiaeresis,     Udiaeresis,       NoSymbol,       NoSymbol,              2,       NoSymbol,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        NoAction() ] };

    key <AB10> {
    symbols[Group1]= [     adiaeresis,     Adiaeresis,       NoSymbol,       NoSymbol,              3,       NoSymbol,       NoSymbol,       NoSymbol ],
    actions[Group1]= [ 
        NoAction() ] };

};
