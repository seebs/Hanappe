module(..., package.seeall)

local GUI = require "hp/modules/GUI"

function onCreate(params)
    view = GUI.View {
        scene = scene,
        size = {200, 200},
        pos = {20, 20},
        layout = {GUI.VBoxLayout {hAlign = "right", vAlign = "bottom"} },
        children = {{
            GUI.Button {
                name = "button1",
                text = "Start",
                onClick = onStartClick,
            },
            GUI.Button {
                name = "button2",
                text = "Back",
                onClick = onBackClick,
            },
        }},
    }
    
end

function onStartClick(e)
    print("onButtonClick")
end

function onBackClick(e)
    SceneManager:closeScene({animation = "fade"})
end