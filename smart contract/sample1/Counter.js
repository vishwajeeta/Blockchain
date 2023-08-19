//test go here
const { expect } = require("chai"); //expect to write test matches
const { ethers } = require("hardhat"); //ethers.js which talks to blockchain. hardhat framework comes with ether

// come's from moka
describe("Counter", () => {
  /* it('sets the initial count',async()=>{ //describe deployment
        
        //get contract with ether.js
        const Counter = await ethers.getContractFactory('Counter')//ether's contract
        const counter = await Counter.deploy('My Contract',1)//deployed contract
        const count = await counter.count()//read from the block chain[fetch data]
        expect(count).to.equal(1)

    })

    it('sets the initial name',async()=>{ //describe deployment
        
        //get contract with ether.js
        const Counter = await ethers.getContractFactory('Counter')//ether's contract
        const counter = await Counter.deploy('My Contract',1)//deployed contract
        const name = await counter.name()//read from the block chain[fetch data]
        expect(name).to.equal('My Contract')

    })*/

  //refactor using becore each special function. so, we dont need to repeat two lines
  /*
    const Counter = await ethers.getContractFactory('Counter')//ether's contract
    const counter = await Counter.deploy('My Contract',1)//deployed contract
    */

  let counter; //declare variable which can access inside beforeEach 2nd line and it
  beforeEach(async () => {
    const Counter = await ethers.getContractFactory("Counter"); //ether's contract//get contract with ether.js
    counter = await Counter.deploy("My Contract", 1); //deployed contract
  });
  describe("Deployment", () => {
    it("sets the initial count", async () => {
      //describe deployment

      //read from the block chain[fetch data]" await counter.count() "
      expect(await counter.count()).to.equal(1);
    });

    it("sets the initial name", async () => {
      //describe deployment

      //read from the block chain[fetch data]" await counter.name() "
      expect(await counter.name()).to.equal("My Contract");
    });
  });

  //other operations
  describe("Countings", () => {
    it('reads the count from "count" public variable', async () => {
      expect(await counter.count()).to.equal(1);
    });
    it('reads the count from "getcount" function', async () => {
      expect(await counter.getCount()).to.equal(1);
    });

    //test increment function
    let transaction;
    it("increments the count", async () => {
      transaction = await counter.increment();
      await transaction.wait();
      expect(await counter.count()).to.equal(2);
      //increment one more time

      transaction = await counter.increment();
      await transaction.wait();
      expect(await counter.count()).to.equal(3);
    });

    it("decrease the count", async () => {
      //test decrement function

      let transaction;
      transaction = await counter.decrement();
      await transaction.wait();
      expect(await counter.count()).to.equal(0);
      //exception handling
      await expect(counter.decrement()).to.be.reverted;
    });

    it('read the name from "name" public variable', async () => {
      expect(await counter.name()).to.equal("My Contract");
    });
    it('read the name from "getName" function ', async () => {
      expect(await counter.getName()).to.equal("My Contract");
    });

    it("updates the name", async () => {
      transaction = await counter.setName("Vishwa");
      await transaction.wait();
      expect(await counter.name()).to.equal("Vishwa");
    });
  });
});


//test>Counter.js