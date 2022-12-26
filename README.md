# A simple, cross platform, modularized ecommerce system built on .NET Core [![Join the chat at https://gitter.im/simplcommerce/SimplCommerce](https://badges.gitter.im/simplcommerce/SimplCommerce.svg)](https://gitter.im/simplcommerce/SimplCommerce?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

## High level architecture

![SimpleCommerce - Modular architecture](https://raw.githubusercontent.com/simplcommerce/SimplCommerce/master/modular-architecture.png)

## Build Status
| Build server    | Platform       | Status      |
|-----------------|----------------|-------------|
| Azure Pipelines | All            |[![Build Status](https://simplcommerce.visualstudio.com/simplcommerce/_apis/build/status/simplcommerce.SimplCommerce?branchName=master)](https://simplcommerce.visualstudio.com/simplcommerce/_build/latest?definitionId=1&branchName=master)
|Travis           | Linux / MacOS  |[![Build Status](https://travis-ci.org/simplcommerce/SimplCommerce.svg?branch=master)](https://travis-ci.org/simplcommerce/SimplCommerce) |

## Online demo (Azure Website)
- Store front: http://demo.simplcommerce.com
- Administration: http://demo.simplcommerce.com/admin Email: admin@simplcommerce.com Password: 1qazZAQ!

## Docker

For testing purpose only `docker run -p 5000:80 simplcommerce/ci-build`

Continuous deployment: https://ci.simplcommerce.com

## Visual Studio 2022 and SQL Server

## Visual Code

#### Prerequisites

- SQL Server
- Visual Studio 2022

#### Steps to run

- Update the connection string in appsettings.json in SimplCommerce.WebHost
- Build the whole solution.
- In Solution Explorer, make sure that SimplCommerce.WebHost is selected as the Startup Project
- Open the Package Manager Console Window and make sure that SimplCommerce.WebHost is selected as the Default project. Then type "Update-Database" then press "Enter". This action will create the database schema.
- In Visual Studio, press "Control + F5".
- The back-office can be accessed via /Admin using the following built-in account: admin@simplcommerce.com, 1qazZAQ!

## Mac/Linux with PostgreSQL

#### Prerequisite

- PostgreSQL
- [.NET Core SDK 6.0](https://www.microsoft.com/net/download/all)
- Entity Framework Core (`dotnet tool install --global dotnet-ef`)

#### Steps to run

- Update the connection string in appsettings.json in SimplCommerce.WebHost.
- Run the simpl-build.sh file by issuing the following command: "sudo ./simpl-build.sh". For ubuntu 18: "sudo bash simpl-build.sh"
- In the terminal, navigate to "src/SimplCommerce.WebHost" and type "dotnet run" and then hit "Enter".
- Open http://localhost:5000 in the browser. The back-office can be accessed via /Admin using the following built-in account: admin@simplcommerce.com, 1qazZAQ!

## Technologies and frameworks used:

- ASP.NET MVC Core 6.0
- Entity Framework Core 6.0
- ASP.NET Identity Core 6.0
- Angular 1.6.3
- MediatR 7.0.0 for domain event

## Docs

https://docs.simplcommerce.com/

## Roadmap

https://github.com/simplcommerce/SimplCommerce/wiki/Roadmap

## How to contribute

- Star this project on GitHub.
- Report bugs or suggest features by creating new issues or adding comments to issues
- Submit pull requests
- Spread the word by blogging about Express Store or sharing it on social networks
- Donate to us

## Contributors

This project exists thanks to all the people who contribute.

<a href="https://github.com/simplcommerce/SimplCommerce/graphs/contributors"><img src="https://opencollective.com/simplcommerce/contributors.svg?width=890" title="contributors" alt="contributors" /></a>

## Backers

Love our work and help us continue our activities? [[Become a backer](https://opencollective.com/simplcommerce#backer)]

<a href="https://opencollective.com/simplcommerce#backers" target="_blank"><img src="https://opencollective.com/simplcommerce/backers.svg?width=890"></a>

## Sponsors

Become a sponsor and get your logo on our README on Github with a link to your site. [[Become a sponsor](https://opencollective.com/simplcommerce#sponsor)]

<a href="https://opencollective.com/simplcommerce/sponsor/0/website" target="_blank"><img src="https://opencollective.com/simplcommerce/sponsor/0/avatar.svg"></a>
<a href="https://opencollective.com/simplcommerce/sponsor/1/website" target="_blank"><img src="https://opencollective.com/simplcommerce/sponsor/1/avatar.svg"></a>
<a href="https://opencollective.com/simplcommerce/sponsor/2/website" target="_blank"><img src="https://opencollective.com/simplcommerce/sponsor/2/avatar.svg"></a>
<a href="https://opencollective.com/simplcommerce/sponsor/3/website" target="_blank"><img src="https://opencollective.com/simplcommerce/sponsor/3/avatar.svg"></a>
<a href="https://opencollective.com/simplcommerce/sponsor/4/website" target="_blank"><img src="https://opencollective.com/simplcommerce/sponsor/4/avatar.svg"></a>

## License

Express Store is licensed under the Apache 2.0 license.

### WCF Implementation

##### The CoreWCF Project team has released the 1.0 version of CoreWCF, a port of WCF to the .NET Core platform. It provides a compatible implementation of SOAP, NetTCP, and WSDL. Usage in code is similar to WCF, but updated to use ASP.NET Core as the service host, and to work with .NET Core. This is the first major release of the project, and provides WCF functionality for .NET Core, .NET Framework, and .NET 5+.

The 1.0 release of CoreWCF is compatible with .NET Standard 2.0 so that it will work with:

     *.NET Framework 4.6.2 (and above)
     *.NET Core 3.1
     *.NET 5 & 6

Support for .NET Framework will enable an easier modernization path to .NET Core. Applications with WCF dependencies can be updated to use CoreWCF in-place on .NET framework, which then will work the same when updated to use .NET Core or .NET 5+.

The assemblies are available on [Nuget.org](https://www.nuget.org/profiles/corewcf), as described in the [Release Notes](https://github.com/CoreWCF/CoreWCF/releases/latest).

#### Community Project

CoreWCF was announced as a [community project](https://devblogs.microsoft.com/dotnet/supporting-the-community-with-wf-and-wcf-oss-projects/) in June of 2019, and has had many contributors during the last 3 years. As a community project, CoreWCF has had more commits from other contributors than Microsoft employees, and regular contributions from AWS and other organizations.

A special thanks to [all those](https://github.com/CoreWCF/CoreWCF/graphs/contributors) who have contributed code, issues or suggestions. The community support has been critical to getting the project to this point, and we hope it will continue for subsequent versions. I’d be remiss if I didn’t make a special callout to [@mconnew](https://github.com/mconnew) who has been the backbone of the project and contributed most of the code.

As a community project, the voices of the community guide the direction of the project. For example, the [Feature Roadmap Vote issue](https://github.com/CoreWCF/CoreWCF/issues/234) is highly influential to the planning process for what to work on next. If you are a WCF user, please provide feedback on what you would like to see in subsequent releases.

#### Features

CoreWCF is a subset of the functionality from WCF, but represents what we believe are the most used features, including:

Http & NetTCP transports
Bindings:
BasicHttpBinding
NetHttpBinding
NetTcpBinding – some WS-* features not supported
WebHttpBinding
WSHttpBinding – some WS-* features not supported
Security:
Transport
NetTcpBinding supports Certificate and Windows authentication
Http bindings require authentication to be configured in ASP.NET Core
Transport With Message Credentials
Username, Certificate and Windows Authentication are supported
WS Federation
WSDL generation
Partial configuration support including services & endpoints
Extensibility (IServiceBehavior and IEndpointBehavior) – most extensibility is available
Major WCF features not yet implemented include:

Transports other than Http and NetTCP.
Message security beyond Transport & Transport with Message Credentials
Distributed transactions
Message Queueing

Who should use CoreWCF?
CoreWCF is intended for customers who have been using WCF on .NET Framework and need WCF support in .NET Core to facilitate modernizing the application. While there is nothing stopping you from adopting CoreWCF in greenfield projects, we would recommend you consider more modern alternatives to SOAP such as [gRPC](https://docs.microsoft.com/aspnet/core/grpc/?view=aspnetcore-6.0). The sweet spot for CoreWCF is to make it easier to modernize server and clients that have a strong dependency on WCF and SOAP.

Microsoft Support
We recognize how important support is to enterprise customers, and so we are pleased to announce that Microsoft Product Support will be available for CoreWCF customers.
