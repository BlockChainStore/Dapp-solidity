**STRUCT**

struct Asset
    * uint _id
    * string name
    * address  idOwner
    * uint price


struct User
	- address wallet
	- uint balance


---


**FUNCTION**

buy(uint _idAssest,uint _price) 
	- parameter
		- _idAssest is ID product that you want to buy
		- _price is confirm that you know what cost
	- description 
		- buy product by change ownership
createAsset(string _name,uint _price)
	- parameter
		- _name is name's product
		- _price set price
	- description
		- create product that you want to sell
createUser()
	- description
		- create user 
getUserItems(address _userAddress)
	- parameter
		- _userAddress is address that you want to know what he owns
	- description
		- display all item that he owns
getItemInfo(uint _itemId)
	- parameter
		-_itemId is product that you want to know description
	- description
		- display description about product are name owner and price
changePrice(uint _idAssest,uint _newprice)
	- parameter
		- _idAssest is ID product that you want to change price
		- _newprice is price that you want	
	- escription
		- change price		
rating(address _seller)
	- parameter
		- _seller is who you want to give rating
	- description
		- give rating to seller
getUserVote(address _userAddress)
	- parameter
		- _userAddress is who you want to see whose he rated
	- description
		- display address whose _userAddress rated.

---

**MAPPING (HASH TABLE)**

userItemsIds (KEY => address ,VALUE => uint[])
	- address user to product that he owns
itemIdToUser (KEY => uint ,VALUE => address)
	- uint id product to owner
rate (KEY => address ,VALUE => address[])
	- address rater to list all he rate
countRate (KEY => address ,VALUE => uint)
	- address user to uint rateCount
