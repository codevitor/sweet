Core = newclass "Core";


function Core:init ()
    self.workspace = Workspace();
end


function Core:getWorkspace () 
    return self.workspace;
end

function Core:getRouter () 
    return self.router;
end


function Core:unload () 
end