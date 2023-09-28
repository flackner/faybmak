# faybmak
This is a layered and modified version of the angle-mod wide ISO [Colemak-DH layout](https://colemakmods.github.io/mod-dh/) inspired by the [3l layout](https://github.com/jackrosenthal/threelayout).

```
   Layer 0 (upper row is shifted character)
   ┌─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┲━━━━━━━━━┓
   │     │     │     │     │     │     │     │     │     │     │     │     │     ┃         ┃
   │     │BACK │FWD  │UNDO │REDO │ F5  │ F6  │ F7  │ F8  │ F9  │PGDN │PGUP │MENU ┃ BS      ┃
   ┢━━━━━┷━┱───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┺━┳━━━━━━━┫
   ┃       ┃ Q   │ W   │ C   │ P   │ B   │     │ J   │ L   │ U   │ Y   │     │     ┃       ┃
   ┃ L3    ┃ q   │ w   │ c   │ p   │ b   │ Tab │ j   │ l   │ u   │ y   │ BS  │Shift┃ Enter ┃
   ┣━━━━━━━┻┱────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┺┓      ┃
   ┃        ┃ A   │ R   │ S   │ T   │ G   │Ctrl+│ M   │ N   │ E   │ I   │ O   │     ┃      ┃
   ┃ Ctrl   ┃ a   │ r   │ s   │ t   │ g   │ Alt │ m   │ n   │ e   │ i   │ o   │ L1  ┃      ┃
   ┣━━━━━━┳━┹───┬─┴───┬─┴───┬─┴───┬─┴───┬─┴───┬─┴───┬─┴───┬─┴───┬─┴───┬─┴───┲━┷━━━━━┻━━━━━━┫
   ┃      ┃ Z   │ Ä   │ F   │ D   │ V   │ X   │     │ K   │ H   │ Ü   │ Ö   ┃              ┃
   ┃Shift ┃ z   │ ä   │ f   │ d   │ v   │ x   │ WIN │ k   │ h   │ ü   │ ö   ┃ Win + Alt    ┃
   ┣━━━━━━┻┳━━━━┷━━┳━━┷━━━━┱┴─────┴─────┴─────┴─────┴─────┴────┲┷━━━━━╈━━━━━┻┳━━━━━━┳━━━━━━┫
   ┃       ┃       ┃       ┃           _                       ┃      ┃      ┃      ┃      ┃
   ┃       ┃ Win   ┃ Alt   ┃           SP                      ┃ L2   ┃      ┃ Ctrl ┃      ┃
   ┗━━━━━━━┻━━━━━━━┻━━━━━━━┹───────────────────────────────────┺━━━━━━┻━━━━━━┻━━━━━━┻━━━━━━┛

   Layer 1 (upper row is shifted character)
   ┌─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┲━━━━━━━━━┓
   │     │     │     │     │     │     │     │     │     │     │     │     │     ┃         ┃
   │     │ ^1  │ ^2  │ ^3  │ ^4  │ ^5  │ ^6  │ ^7  │ ^8  │ ^9  │ ^-  │^+   │     ┃         ┃
   ┢━━━━━┷━┱───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┺━┳━━━━━━━┫
   ┃       ┃     │     │     │     │     │     │     │     │     │     │     │     ┃       ┃
   ┃ L3    ┃ ~   │ !   │ /   │ &   │ |   │     │     │     │     │     │     │Shift┃ Enter ┃
   ┣━━━━━━━┻┱────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┺┓      ┃
   ┃        ┃     │ €   │ °   │ §   │     │Ctrl+│     │     │     │     │     │     ┃      ┃
   ┃ Ctrl   ┃ -   │ +   │ *   │ .   │ ,   │ Alt │     │ <   │ >   │ ß   │     │ L1  ┃      ┃
   ┣━━━━━━┳━┹───┬─┴───┬─┴───┬─┴───┬─┴───┬─┴───┬─┴───┬─┴───┬─┴───┬─┴───┬─┴───┲━┷━━━━━┻━━━━━━┫
   ┃      ┃     │     │     │ ´   │ `   │     │     │     │     │     │     ┃              ┃
   ┃Shift ┃ \   │ ^   │ %   │ ;   │ =   │ ?   │ WIN │ #   │ @   │     │     ┃ Win + Alt    ┃
   ┣━━━━━━┻┳━━━━┷━━┳━━┷━━━━┱┴─────┴─────┴─────┴─────┴─────┴────┲┷━━━━━╈━━━━━┻┳━━━━━━┳━━━━━━┫
   ┃       ┃       ┃       ┃                                   ┃      ┃      ┃      ┃      ┃
   ┃       ┃ Win   ┃ Alt   ┃           :                       ┃ L2   ┃      ┃ Ctrl ┃      ┃
   ┗━━━━━━━┻━━━━━━━┻━━━━━━━┹───────────────────────────────────┺━━━━━━┻━━━━━━┻━━━━━━┻━━━━━━┛

   Layer 2 (^=Ctrl, !=Alt, #=Win, +=Shift)
   ┌─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┲━━━━━━━━━┓
   │     │     │     │     │     │     │     │     │     │     │     │     │     ┃         ┃
   │     │ #1  │ #2  │ #3  │ #4  │ #5  │ #6  │ #7  │ #8  │ #9  │ ^!- │ ^!+ │+F10 ┃ !F4     ┃
   ┢━━━━━┷━┱───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┺━┳━━━━━━━┫
   ┃       ┃     │     │     │     │     │     │     │     │     │     │     │     ┃       ┃
   ┃ L3    ┃^PGDN│LEFT │UP   │RGHT │^PGUP│     │     │     │ [   │ ]   │ ESC │Shift┃ Enter ┃
   ┣━━━━━━━┻┱────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┺┓      ┃
   ┃        ┃     │     │     │     │     │Ctrl+│     │     │     │     │     │     ┃      ┃
   ┃ Ctrl   ┃HOME │^LEFT│ DN  │^RGHT│ END │ Alt │     │ (   │ )   │ Tab │ '   │ L1  ┃      ┃
   ┣━━━━━━┳━┹───┬─┴───┬─┴───┬─┴───┬─┴───┬─┴───┬─┴───┬─┴───┬─┴───┬─┴───┬─┴───┲━┷━━━━━┻━━━━━━┫
   ┃      ┃     │     │     │     │     │     │     │     │     │     │     ┃              ┃
   ┃Shift ┃ $   │     │!PGUP│!PGDN│ "   │     │ WIN │ {   │ }   │     │     ┃ Win + Alt    ┃
   ┣━━━━━━┻┳━━━━┷━━┳━━┷━━━━┱┴─────┴─────┴─────┴─────┴─────┴────┲┷━━━━━╈━━━━━┻┳━━━━━━┳━━━━━━┫
   ┃       ┃       ┃       ┃            DEL                    ┃      ┃      ┃      ┃      ┃
   ┃       ┃ Win   ┃ Alt   ┃           ^DEL                    ┃ L2   ┃      ┃ Ctrl ┃      ┃
   ┗━━━━━━━┻━━━━━━━┻━━━━━━━┹───────────────────────────────────┺━━━━━━┻━━━━━━┻━━━━━━┻━━━━━━┛


   Layer 3 (upper row contains combo modifiers) (also reachedable with L1+L2)
   ┌─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┲━━━━━━━━━┓
   │     │     │     │     │     │     │     │     │     │     │     │     │     ┃         ┃
   │     │ F1  │ F2  │ F3  │ F4  │ F5  │ F6  │ F7  │ F8  │ F9  │ F10 │ F11 │ F12 ┃         ┃
   ┢━━━━━┷━┱───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┺━┳━━━━━━━┫
   ┃       ┃     │     │^!   │#!   │#!   │     │     │     │     │     │     │     ┃       ┃
   ┃ L3    ┃ BS  │ DEL │UP   |LEFT │RGHT │     │     │ 7   │ 8   │ 9   │ BS  │Shift┃ Enter ┃
   ┣━━━━━━━┻┱────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┺┓      ┃
   ┃        ┃^!   │     │^!   │     │^!   │Ctrl+│     │     │     │     │     │     ┃      ┃
   ┃ Ctrl   ┃HOME │!HOME│DN   │!END │END  │ Alt │ .   │ 4   │ 5   │ 6   │ 0   │ L1  ┃      ┃
   ┣━━━━━━┳━┹───┬─┴───┬─┴───┬─┴───┬─┴───┬─┴───┬─┴───┬─┴───┬─┴───┬─┴───┬─┴───┲━┷━━━━━┻━━━━━━┫
   ┃      ┃^!+  │     │^!   │^!   │^!+  │     │     │     │     │     │     ┃              ┃
   ┃Shift ┃HOME │     │PGUP │PGDN │ END │     │ WIN │ 1   │ 2   │ 3   │ :   ┃ Win + Alt    ┃
   ┣━━━━━━┻┳━━━━┷━━┳━━┷━━━━┱┴─────┴─────┴─────┴─────┴─────┴────┲┷━━━━━╈━━━━━┻┳━━━━━━┳━━━━━━┫
   ┃       ┃       ┃       ┃                                   ┃      ┃      ┃      ┃      ┃
   ┃       ┃ Win   ┃ Alt   ┃              ENTER                ┃ L2   ┃      ┃ Ctrl ┃      ┃
   ┗━━━━━━━┻━━━━━━━┻━━━━━━━┹───────────────────────────────────┺━━━━━━┻━━━━━━┻━━━━━━┻━━━━━━┛

```
