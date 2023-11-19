Component = Modules:subclass("Component");



function Component:init () 
    self.super:init("Router Module", getTickCount());
end


function Component:unload () 
end