-- Universal Executor Script

local function executeScript(script)
    loadstring(script)()
end

-- Example usage for different executors
if _G and _G.getFocus then
    executeScript('print("Running on Wave")')
elseif syn then
    executeScript('print("Running on Synapse X")')
elseif getgenv then
    executeScript('print("Running on Script-Ware")')
elseif isfolder and isfile then
    executeScript('print("Running on Volcano")')
else
    executeScript('print("Running on an unknown executor")')
end

-- Add more compatibility checks as needed