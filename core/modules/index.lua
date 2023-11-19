Modules = newclass "Modules";


function Modules:init (moduleName, startTime)
    self.module = moduleName;
    self.startTime = startTime or getTickCount();
    
    return print(string.format('[core/modules]: "%s" loaded.', self.module));
end


function Modules:getStartTime () 
    return self.startTime;
end