# Install the tools

## NodeJS

```
choco install nodejs -y
```

## TFX

```
npm install -g tfx-cli
``` 

## VSCode
Install the PowerSehll Extention 
```
code --install-extension ms-vscode.powershell
```
## GitHub CLI
```
choco install gh -y
```

# Initial setup

folder structure

```
tfx build tasks create --task-name SetRetention --friendly-name SetRetention --description 'This task creates or updates the retention for the pipeline' --author 'Wessel Kalter'
```

add the [VstsTaskSdk](https://www.powershellgallery.com/packages/VstsTaskSdk/0.11.0?WT.mc_id=AZ-MVP-5003674) module

```
Save-Module –Name VstsTaskSdk –Path .\SetRetention\ps_modules –Force
```

# Create a manifest file
vss-extension.json

[Create a publisher](https://learn.microsoft.com/en-us/azure/devops/extend/publish/overview?view=azure-devops&WT.mc_id=AZ-MVP-5003674#create-a-publisher)

# Create a publisher
https://marketplace.visualstudio.com/manage/publishers/wkalter?auth_redirect=True

# Create a package

```
tfx extension create --manifest-globs vss-extension.json
```

# upload package

https://marketplace.visualstudio.com/manage/publishers/WesselKalter?auth_redirect=True



# USING THE SYSTEM OAUTH TOKEN IN AZURE DEVOPS
https://blog.bartekr.net/2020/09/24/using-the-system-oauth-token-in-azure-devops/


# YAML definition

```
- task: SetRetention@0
  inputs:
    daysValid: 30
  env:
    SYSTEM_ACCESSTOKEN: $(System.AccessToken)
```



# References
- https://docs.github.com/en/get-started/importing-your-projects-to-github/importing-source-code-to-github/adding-locally-hosted-code-to-github
- https://4bes.nl/2021/02/21/create-a-custom-azure-devops-powershell-task/#:~:text=Create%20a%20custom%20Azure%20DevOps%20pipeline%20task%20for,script%20...%208%20Configure%20task.json%20...%20Meer%20items
