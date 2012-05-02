local class = require("hp/lang/class")
local MOAIPropUtil = require("hp/util/MOAIPropUtil")

--------------------------------------------------------------------------------
-- 描画オブジェクトの基底クラスです.<br>
-- MOAIPropを拡張して、便利な関数を追加します.
-- @class table
-- @name DisplayObject
--------------------------------------------------------------------------------
local M = class(MOAIPropUtil)

--------------------------------------------------------------------------------
-- パラメータテーブルの値を元に、各setter関数の引数にセットしてコールします.
--------------------------------------------------------------------------------
function M:copyParams(params)
    if params.left then
        self:setLeft(params.left)
    end
    if params.top then
        self:setTop(params.top)
    end
    if params.layer then
        params.layer:insertProp(self)
    end
end

return M