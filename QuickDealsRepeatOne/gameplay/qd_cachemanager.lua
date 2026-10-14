CacheManager = {};

local _localCachedSell = {};
local _localCachedBuy = {};

CacheManager.GetCachedDeals = function(isSell:boolean)
    if isSell then
        return _localCachedSell or {};
    else
        return _localCachedBuy or {};
    end
end

CacheManager.SetCachedDeals = function(deals:table, isSell:boolean)
    if isSell then
        _localCachedSell = deals or {};
    else
        _localCachedBuy = deals or {};
    end
end

ExposedMembers.QD = ExposedMembers.QD or {};
ExposedMembers.QD.CacheManager = CacheManager;
