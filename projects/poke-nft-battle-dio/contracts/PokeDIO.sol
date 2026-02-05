// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract PokeDIO is ERC721, Ownable {
    struct Pokemon {
        string name;
        uint256 level;
        string img;
    }
    
    Pokemon[] private _pokemons;
    
    event PokemonCreated(uint256 id, string name, address owner);
    event BattleFought(uint256 attackerId, uint256 defenderId);

    constructor() ERC721("PokeDIO", "PKD") Ownable(msg.sender) {
        // Pokémon inicial para o owner
        _createPokemon("Pikachu", msg.sender, "ipfs://QmPikachu");
    }
    
    // Função INTERNA para criação (evita duplicação de código)
    function _createPokemon(
        string memory _name, 
        address _to, 
        string memory _img
    ) internal returns (uint256) {
        uint256 id = _pokemons.length;
        _pokemons.push(Pokemon(_name, 1, _img));
        _safeMint(_to, id);
        
        emit PokemonCreated(id, _name, _to);
        return id;
    }

    // Função PÚBLICA - só owner pode chamar
    function createNewPokemon(
        string memory _name, 
        address _to, 
        string memory _img
    ) public onlyOwner returns (uint256) {
        require(_to != address(0), "Endereco invalido");
        require(bytes(_name).length > 0, "Nome nao pode ser vazio");
        
        return _createPokemon(_name, _to, _img);
    }
    
    // Função para criar BATCH de Pokémons (útil para testes)
    function createMultiplePokemons(
        string[] memory _names,
        address[] memory _recipients,
        string[] memory _imgs
    ) public onlyOwner {
        require(
            _names.length == _recipients.length && 
            _names.length == _imgs.length, 
            "Arrays devem ter o mesmo tamanho"
        );
        
        for(uint256 i = 0; i < _names.length; i++) {
            _createPokemon(_names[i], _recipients[i], _imgs[i]);
        }
    }

    function battle(uint256 _attackingPokemon, uint256 _defendingPokemon) public {
        require(ownerOf(_attackingPokemon) == msg.sender, "Voce nao e dono deste Pokemon");
        require(_attackingPokemon < _pokemons.length, "Pokemon atacante nao existe");
        require(_defendingPokemon < _pokemons.length, "Pokemon defensor nao existe");
        require(_attackingPokemon != _defendingPokemon, "Nao pode batalhar consigo mesmo");
        
        Pokemon storage attacker = _pokemons[_attackingPokemon];
        Pokemon storage defender = _pokemons[_defendingPokemon];

        if (attacker.level >= defender.level) {
            attacker.level += 2;
            defender.level += 1;
        } else {
            attacker.level += 1;
            defender.level += 2;
        }
        
        emit BattleFought(_attackingPokemon, _defendingPokemon);
    }

    // Funções view
    function getPokemon(uint256 _id) public view returns (
        string memory name,
        uint256 level,
        string memory img,
        address owner
    ) {
        require(_id < _pokemons.length, "Pokemon nao existe");
        Pokemon memory pokemon = _pokemons[_id];
        return (pokemon.name, pokemon.level, pokemon.img, ownerOf(_id));
    }
    
    function getPokemonCount() public view returns (uint256) {
        return _pokemons.length;
    }
    
    // TESTES
    function testCreateSecondPokemon() public onlyOwner returns (bool) {
        try this.createNewPokemon(
            "Charmander", 
            msg.sender, 
            "ipfs://QmCharmander"
        ) returns (uint256) {
            return true;
        } catch {
            return false;
        }
    }
    
    function getOwnerAddress() public view returns (address) {
        return owner();
    }
}