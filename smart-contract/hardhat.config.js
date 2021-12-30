require("@nomiclabs/hardhat-waffle");

module.exports = {
  solidity: "0.8.0",
  networks: {
    ropsten: {
      url: "https://eth-ropsten.alchemyapi.io/v2/U4Ck6l4IsmrSZ3BLuPCyas6MmHU1F1VA",
      accounts: [
        "b705b5409b81654de5bc94f53daa83e150a7c6bf53311239c4486391c63d3067",
      ],
    },
  },
};
