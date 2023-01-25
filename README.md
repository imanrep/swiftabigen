# swiftabigen
Convert EVM Contract ABI from json to swift file


# How to install
1. Install NodeJS on your system
2. Install NPM package ```npm i swiftabigen --location=global```
3. After installation you can use command ```npx swiftabigen filename``` filename is name of json ABI file without extension
4. File will be generated under folder (see picture below)

![image](https://user-images.githubusercontent.com/86184667/214624360-05bd5dda-8269-47ce-ba16-c2737dc395bc.png)

5. Open your XCode Project and create Group with name **CustomAbi**
6. Click <b>Add files to "project"</b> and import the folder

![Screenshot 2023-01-25 at 17 27 07](https://user-images.githubusercontent.com/86184667/214625677-cf9f41d2-3f0c-4432-96ae-1213e2be1faf.png)

Make sure you choose create groups!

![Screenshot 2023-01-25 at 17 28 09](https://user-images.githubusercontent.com/86184667/214625851-6b6bc628-e5fb-42f2-ae9c-1a5c7cda3807.png)

Tara! your ABI was successfully imported.

![Screenshot 2023-01-25 at 17 29 04](https://user-images.githubusercontent.com/86184667/214626423-7b7a368d-d1a3-41e6-bfef-35161c72e59d.png)


# How to use
You no need to declare contract to every functions. you only need declare for the Contract and use the functions!
## IERC20 example 
### Transfer
```swift
func test_contract() async {
        do {
            let x = IERC20Contract(contract: "0x7ef95a0FEE0Dd31b22626fA2e10Ee6A223F8a684", client: client)
            let name = try await x.name()
            print(name)
        }catch {
            
        }
}
```

![Screenshot 2023-01-25 at 17 33 42](https://user-images.githubusercontent.com/86184667/214627435-7b348f83-3e39-43be-a54c-a0c8f5bad2f5.png)

### Token Transfer (nonPayable)
```swift
func test_contract() async {
        do {
            let x = IERC20Contract(contract: "0x7ef95a0FEE0Dd31b22626fA2e10Ee6A223F8a684", client: client)
            let txHash = try await x.transfer(recepient: EthereumAddress("0x7ef95a0FEE0Dd31b22626fA2e10Ee6A223F8a684"), amount BigUInt(100000000000), account : account)
            print(txHash)
        }catch {
            
        }
}
```

![Screenshot 2023-01-25 at 17 39 22](https://user-images.githubusercontent.com/86184667/214628435-4f785121-8602-44f8-9a65-a7a0cdc6972b.png)

# Dependencies
<a href="https://github.com/argentlabs/web3.swift">web3.swift</a>

<a href="https://github.com/imanrep/swiftabigen#how-to-install">ReadMe</a>

