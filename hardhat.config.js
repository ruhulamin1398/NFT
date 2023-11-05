
 


require('@nomiclabs/hardhat-waffle');
const { API_URL, PRIVATE_KEY } = process.env;
module.exports = {
  solidity: '0.8.20',
  networks: {
    sepolia: {
      url: 'https://eth-sepolia.g.alchemy.com/v2/VJYxtBrrBhmgTayoeT4pr8830MY69Qfp',
      accounts: ['20cec08faea52eb9f022ab7c0f79224d6fe8c1594e3126d6367a3c669080f33a'],
    },
  },
}
