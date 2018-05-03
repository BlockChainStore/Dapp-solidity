pragma solidity ^0.4.22;

contract market{
    
    event listAssets(string name,uint  idOwner);
    event listUser(string name,address wallet);
    event showId(uint id);
    
    uint idAssest=1;
    uint idUser=1;
    struct Asset{
        uint _id;
        string name;
        address  idOwner;
        uint price;
        //bool bought;
        // string description;
    }
    Asset[] public assets;
    
    struct User{
        address wallet;
        uint balance;
    }
    User[] public users;
    
    mapping (address => uint[]) public userItemsIds;
    mapping (uint => address) public itemIdToUser;
    mapping (address => address[]) public rate;
    mapping (address => uint) public countRate;
    mapping (uint => address) public user;
    
    function buy (uint _idAssest,uint _price){
       //1. check assets that have?
    //   require(_idAssest<=assets.length,"didnt have this assets");
       //2.check money _idNewOwner
  //     require((assets[_idAssest].price)<=((msg.value)),"didnt have money enough");
       //3.check _price equal assetprice?
  //     require(assets[_idAssest].price==_price);
       //increase money to _idOldOwner
      ////users[assets[_idAssest].idOwner].balance+=assets[_idAssest].price;
       //decrease money to _idNewOwner
     /////  users[_idNewOwner].balance-=assets[_idAssest].price;
      
       
       
       
       //delete item old owner
       uint[] memory old= userItemsIds[assets[_idAssest].idOwner];
       uint[] memory temp = new uint[](old.length-1);
       
       uint pointer=temp.length;
       for(uint i =0;i<temp.length;i++){
          if(i==_idAssest-1){
               pointer =i;
               temp[i]=old[i+1];
           }else if(i<pointer){
                temp[i]=old[i];
               
           }else if(i>pointer){
                temp[i]=old[i+1];
           }
       }
            delete (userItemsIds[assets[_idAssest].idOwner]);
           (userItemsIds[assets[_idAssest].idOwner])=temp;
       
     
      
       assets[_idAssest].idOwner=msg.sender; 
       //change owner
       userItemsIds[msg.sender].push(_idAssest);
       
       
    }
    function createAsset(string _name,uint _price) payable {
        assets.push(Asset(idAssest,_name, msg.sender,_price));
        itemIdToUser[idAssest] = msg.sender;
        userItemsIds[msg.sender].push(idAssest);
        idAssest++;
    }
    function createUser(){
        users.push(User(msg.sender,msg.value));
      
    }

    //This function will return list of ids of all items belonging to the _userAddress
    function getUserItems(address _userAddress) public view returns (uint[] items){
        return userItemsIds[_userAddress];
    }

    //This function returns all information about single item
    function getItemInfo(uint _itemId) public view returns (string nameOfItem, address _idOwner, uint price) {
        Asset memory item = assets[_itemId];
        return ( item.name, item.idOwner, item.price);
    }
    function changePrice(uint _idAssest,uint _newprice){
        require(assets[_idAssest].idOwner==msg.sender);
        assets[_idAssest].price=_newprice;
    }
    function rating(address seller){
        bool canRate = true;
        address[] memory temp=rate[msg.sender];
        for(uint i =0 ;i<temp.length;i++){
            if(temp[i]==seller){
                canRate=false;
                break;
            }
        }
        require(canRate);
        rate[msg.sender].push(seller);
        countRate[seller]++;
    }
        function getUserVote(address _userAddress) public view returns (address[] voted){
        return rate[_userAddress];
    }

}