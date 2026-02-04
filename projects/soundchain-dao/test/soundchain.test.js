const { expect } = require("chai");

describe("SoundToken", function () {
  it("should mint initial supply", async function () {
    const Token = await ethers.getContractFactory("SoundToken");
    const token = await Token.deploy();

    const balance = await token.balanceOf(
      (await ethers.getSigners())[0].address
    );

    expect(balance).to.be.gt(0);
  });
});
