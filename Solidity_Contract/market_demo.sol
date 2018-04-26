pragma solidity ^0.4.22;

contract market{
    
    event listAssets(string name,uint  idOwner);
    event listUser(string name,address wallet);
    event showId(uint id);

    struct Asset{
        string name;
        uint  idOwner;
        
        uint price;
        //bool bought;
        // string description;
    }
    Asset[] public assets;
    
    struct User{
        string name;
        address wallet;
        uint balance;
    }
    User[] public users;
    function buy (uint _idAssest,uint _idNewOwner){
       //1. check assets that have?
       require(_idAssest<=assets.length,"didnt have this assets");
       //2.check money _idNewOwner
       require((assets[_idAssest].price)<=(users[_idNewOwner].balance),"didnt have money enough");
        //increase money to _idOldOwner
        users[assets[_idAssest].idOwner].balance+=assets[_idAssest].price;
        //decrease money to _idNewOwner
        users[_idNewOwner].balance-=assets[_idAssest].price;
        //change owner
        assets[_idAssest].idOwner=_idNewOwner; 
    }
    function createAsset(string _name,uint  _idOwner,uint _price){
        uint id =assets.push(Asset(_name, _idOwner,_price));
        showId(id);
    }
    function createUser(string _name,address _owner,uint _balance){
        uint id =users.push(User(_name,_owner,_balance));
        showId(id);
    }
    function listAllAssets() public view {
        for(uint i =0;i<users.length;i++){
            listAssets(assets[i].name,assets[i].idOwner);
        }
    }
    function listAllUsers() public view{
        for(uint i =0;i<=users.length;i++){
            listUser(users[i].name,users[i].wallet);
        }
    }

}