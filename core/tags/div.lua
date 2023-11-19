Div = Tags:subclass("Div");


function Div:init (id, className)
    self.id = id or nil;
    self.className = className or nil;
    self.childs = {};
end


function Div:addChild () 
end

function Div:render () 
end

function Div:unload () 
end