function OnEvent(event, arg)
    if event == "MOUSE_BUTTON_PRESSED" then
        if arg == 5 then -- Crouch boost bhop, must be on flat surface ingame (not real life)
            MoveMouseWheel(-1)
            Sleep(608) 
            PressKey("lctrl")
            Sleep(124)
            ReleaseKey("lctrl")
            MoveMouseWheel(-1)
            while IsMouseButtonPressed(5) do
                MoveMouseWheel(-1)
                Sleep(31)
            end
        end

        if arg == 4 then -- regular bhopping
            while IsMouseButtonPressed(4) do
                MoveMouseWheel(-1)
                Sleep(31)
            end
        end
    end
end