g_pCore = nil;


addEventHandler("onClientResourceStart", resourceRoot, function () 
    g_pCore = Core();

    local myWorkspace = g_pCore:getWorkspace():create("myWorkspace");

    myWorkspace:getRouter():addRoute("/home", {});
end);