net.Receive("ixViewPaper", function(lenght, client)
	local itemID, text, bEditable = net.ReadUInt(32), net.ReadString(), net.ReadBool()
	bEditable = tobool(bEditable)

	local panel = vgui.Create("ixPaper")
	panel:SetText(text)
	panel:SetEditable(bEditable)
	panel:SetItemID(itemID)
end)
