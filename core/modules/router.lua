Router = Modules:subclass("Router");


function Router:init (routes)
    self.super:init("Router Module", getTickCount());
    self.routes = {};
end


function Router:addRoute (pathRoute, component)
    if (type(pathRoute) ~= "string") then 
        return outputDebugString("[newRoute]: Missing arguments to create a route");
    end

    table.insert(self.routes, {
        path = pathRoute,
        attach = component,
    });
end


function Router:renderRoute (pathRoute)
    for _, route in ipairs(self.routes) do 
        route.attach:render();
    end 
end


function Router:getRoutes () 
    return self.routes;
end


function Router:unload () 
end