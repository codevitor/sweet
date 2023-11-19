Workspace = Modules:subclass ("Workspace");


function Workspace:init () 
    self.super:init("Workspace Module", getTickCount());

    self.workspaces = {};
    self.router = Router ();
end


function Workspace:create (name) 
    if (type(name) ~= "string") then 
        return outputDebugString("[newRoute]: Missing arguments to create a route");
    end

    table.insert(self.workspaces, {
        name = name,
    });


    return self;
end


function Workspace:getRouter ()
    return self.router; 
end

function Workspace:unload () 
end