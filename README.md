# VNHSharedCode

Sharing Swift code between iPhone apps, This is pretty easy way to share code between multiple projects instead of copy pasting hell lot of classes and code, Even helps you to Keep the code clean/separate.

# How to create?
* Start the project by creating a top level directory and adding to it an Xcode workspace.
  ```
  mkdir VNHSharedCode
  cd VNHSharedCode
  ```
  * Initialize a new **workspace** in the root directory
  * Next, we create a new **App** Project and add it to the Workspace(disable Git)
  
* Adding the VNHSharedCode project
  It requires using the command line to initialize Swift package.
  
  ``` 
  cd
  mkdir SharedCode
  cd SharedCode
  swift package init
  swift package generate-xcodeproj
  ```
* Now that all the projects are set up, there is only one remaining step: creating a dependency between the App and SharedCode
  projects. There is one caveat here: by default, the SharedCode project has one target and that target is for the Mac SDK.
  To attach this project to the App target we need to create a new target in the SharedCode project that targets the iOS 
  SDK.
  
* To use the new SharedCode framework using the same import SharedCode statement.
  ```
  import SharedCode
  ```
  
  Access to class or Methods, Access specifier of classess, Properties, Methods should be ``` public ```
  ```
  let text = SharedCode.text        
  message?.text = text
  ```
# Important note
- Deployment target of both App and SharedCode framework should be same
- Add SharedCode framework under App -> App target -> Build Phases -> Link Binary with Libraries -> Select/Add SharedCode framework
