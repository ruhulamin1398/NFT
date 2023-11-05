import "@openzeppelin/contracts/utils/Counters.sol"; 
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";   

contract MyNFT is ERC721URIStorage,Ownable{
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("AK Coins","AK"){

    }

    function mintNFT(address recipient,string memory tokenURI) public onlyOwner returns (unit256){
        _tokenIds.increment();

        unt256 newItemId= _tokenIds.current();
        _mint(recipient , newItemId);
        _setTokenURI(newItemId,tokenURI)
        return newItemId;
    }


}