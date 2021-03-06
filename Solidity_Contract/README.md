## **STRUCT**

#### Asset
 * uint _id
 * string name
 * address  idOwner
 * uint price
 * bool forSale

---

## **FUNCTION**

|FUNCTION|PARAMETER|DESCRIPTION|
|---|---|---|
|buy(uint _idAssest) |<ul><li>_idAssest is ID product that you want to buy</li></ul>|buy product by change ownership|
|createAsset(string _name,uint _price)|<ul><li>_name is name's product</li><li>_price set price</li></ul>|create product that you want to sell|
|getUserItems(address _userAddress)|<ul><li>_userAddress is address that you want to know what he owns</li></ul>|display all item that he owns|
|getItemInfo(uint _itemId)|<ul><li>_itemId is product that you want to know description</li></ul>|display description about product are name owner and price|
|changePrice(uint _idAssest,uint _newPrice)|<ul><li>_idAssest is ID product that you want to change price</li><li>_newPrice is price that you want</li></ul>|change price|
|rating(address _seller)|<ul><li>_seller is who you want to give rating</li></ul>|give rating to seller|
|getUserVote(address _userAddress)|<ul><li>_userAddress is who you want to see whose he rated</li></ul>|display address whose _userAddress rated|
|setToSale(uint _idAssest,uint _price)|<ul><li>_idAssest is ID product that you want to set for sale</li><li>_price is price that you want to sell</li></ul>|set to sale|
---

## **MAPPING (HASH TABLE)**

| MAPPING | KEY | VALUE| DESCRIPTION |
|:-------:|:---:|:----:|:-----------:|
|userItemsIds|address|uint[]|address user to product that he owns|
|itemIdToUser|uint|address|uint id product to owner|
|rate|address|address[]|address rater to list all he rate|
|countRate|address|uint|address user to uint rateCount|
