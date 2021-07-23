local intvalue = --your intvalue
local TextObj = --your text label/box
local Runservice = game:GetService("RunService")




local l = intvalue.Value
intvalue.Changed:Connect(function(newVal)
	local Difference = newVal - l 
	l = newVal
	local incnum = Difference/100.0

	local o = 0 
	local c c = Runservice.Heartbeat:Connect(function()
		o += 1
		if o <= Difference/incnum then
			local num = TextObj.Text + incnum
			TextObj.Text = num	
		else
			local remanider = l - tonumber(TextObj.Text)
			if remanider ~= 0 then
				TextObj.Text += remanider
			end
			c:Disconnect()
		end
	end)
end)
