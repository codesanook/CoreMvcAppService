# CoreMvcAppService
A simple project to deploy ASP.NET Core MVC

# REF
- [Deploy to App Service using GitHub Actions](https://docs.microsoft.com/en-us/azure/app-service/deploy-github-actions?tabs=applevel)

# Troubleshooting
## Publish profile does not contain kudu UR
- Change downloaded publish profile content from `waws-prod.publish.azurewebsites.windows.net` to `[app-name].scm.azurewebsites.net` and leave rest as it is and update in GitHub secret.
- Or add app setting in Azure portal key `WEBSITE_WEBDEPLOY_USE_SCM` value `true`, download a publish profile and update in GitHub secret.