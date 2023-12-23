local function on_tooltip_set_item(self)
  local _, link                                                                            = self:GetItem()
  local _, _, _, ilvl, _, itemType, itemSubtype, stackCount, _, _, price, _, _, _, _, _, _ = GetItemInfo(link)


  GameTooltip:AddDoubleLine("|cFFFFFFFFID|r", link:match("item:(%d+)"))

  if not (itemType == nil) then
    GameTooltip:AddDoubleLine("|cFFFFFFFFType|r", itemType)
  end

  if not (itemSubtype == nil) then
    GameTooltip:AddDoubleLine("|cFFFFFFFFSubtype|r", itemSubtype)
  end

  if not (ilvl == nil) then
    GameTooltip:AddDoubleLine("|cFFFFFFFFItem Level|r", ilvl)
  end

  if not (stackCount == nil) and (stackCount > 1) then
    GameTooltip:AddDoubleLine("|cFFFFFFFFStack Size|r", stackCount)
  end

  if not (price == nil) and not (price == 0) then
    GameTooltip:AddDoubleLine("|cFFFFFFFFSell Price|r", GetCoinTextureString(price))
  else
    GameTooltip:AddLine("|cFFEDEDEDCannot Be Sold|r")
  end
end

GameTooltip:HookScript("OnTooltipSetItem", on_tooltip_set_item)
