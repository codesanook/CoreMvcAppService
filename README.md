# CoreMvcAppService
A simple project to deploy ASP.NET Core MVC

# How to use Yarn Workspaces 

# To build a yarn workspace from root
```
yarn install
```

# Build a Node.js project from root
```
yarn workspace core-mvc-app-service run build
```

# Build all Node.js projects from root
```
yarn workspaces run build
```

# Get workspaces info
```
yarn workspaces info
```


# Run .NET Core project
- CD to CoreMvcAppService
- `dot net restore
- `dot net run

# REF
- [Deploy to App Service using GitHub Actions](https://docs.microsoft.com/en-us/azure/app-service/deploy-github-actions?tabs=applevel)

# Troubleshooting
## Publish profile does not contain kudu UR
- Change downloaded publish profile content from `waws-prod.publish.azurewebsites.windows.net` to `[app-name].scm.azurewebsites.net` and leave rest as it is and update in GitHub secret.
- Or add app setting in Azure portal key `WEBSITE_WEBDEPLOY_USE_SCM` value `true`, download a publish profile and update in GitHub secret.

# Unrecognized named-value
# https://github.community/t/how-to-use-env-context/16975

## Useful document
 https://azure.github.io/AppService/2020/06/09/App-Service-Continuous-Deployment-for-Windows-Containers-with-GitHub-Actions.html
 configure port number
https://docs.microsoft.com/en-us/azure/app-service/configure-custom-container?pivots=container-linux#configure-port-number

## TODO
- [ ] Disable Admin user account

# How to build and run docker image
docker build . --tag mvc
docker run --publish 5000:5000 mvc
