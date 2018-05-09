//Demo not finished
//
pragma solidity^0.4.18;

contract BCS {
    address public owner;
    address public seller;
    address public buyer;
    
    event NewProduct(uint productId, address ownerProduct, string productName, uint productPrice);
    
    mapping(address => uint[]) userItemsId;
    mapping(uint => address) itemIdUserOwner;
    
    struct Product {
      address ownerProduct;
      string productName;
      uint productPrice;
      uint productHash;
    }
    
    Product[] public products;
    
    uint productDigit = 16;
    uint productModulus = 10 ** productDigit;
    
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
    
    function _generateProductHash(string _strName, address _ownerProduct) private view returns (uint) {
        uint rand = uint(keccak256(_strName,_ownerProduct));
        return rand % productModulus;
    }
    
    function createProduct(address _ownerProduct, string _productName, uint _productPrice) public {
        uint _randProduct = _generateProductHash(_productName,_ownerProduct);
        uint id = products.push(Product(_ownerProduct,_productName, _productPrice, _randProduct)) - 1;
        NewProduct(id, _ownerProduct, _productName, _productPrice);
    }
    
    function changeOwnerProduct(address _buyingBy, address _oldOwner) {
        
    }
    
}