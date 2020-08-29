local playerMeta = FindMetaTable("Player")

function playerMeta:IsScanner()
	return IsValid(self.ixScanner)
end

function playerMeta:AddCombineDisplayMessage(text, color, ...)
	if (self:IsCombine()) then

		net.Start("ixCombineDisplayMessage")
			net.WriteString(text)
			net.WriteColor(color or color_white)
			net.WriteTable({...})
		net.Send(self)
	end
end
