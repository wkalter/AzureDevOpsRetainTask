[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]


<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/wkalter/AzureDevOpsRetainTask">
    <img src="icon.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Azure DevOps YAML pipeline Retention Lease step</h3>

  <p align="center">
    Add and Update pipeline retention lease!
    <br />
    <a href="https://github.com/wkalter/AzureDevOpsRetainTask"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/wkalter/AzureDevOpsRetainTask">View Demo</a>
    ·
    <a href="https://github.com/wkalter/AzureDevOpsRetainTask/issues">Report Bug</a>
    ·
    <a href="https://github.com/wkalter/AzureDevOpsRetainTask/issues">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

[![Product Name Screen Shot][product-screenshot]](https://example.com)

### YAML definition example

```
- task: SetRetention@0
  inputs:
    daysValid: 30
  env:
    SYSTEM_ACCESSTOKEN: $(System.AccessToken)
```

TODO

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With

This section list any major frameworks/libraries used to bootstrap your project. 

* [![PowerShell][Powershell.com]][PowerShell-url]
* [![NodeJS][NodeJS.org]][NodeJS-url] 
<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->
## Getting Started

This section gives instructions on setting up your project locally.
To get a local copy up and running follow these simple example steps.

### Prerequisites

This is an example of how to list things you need to use the software and how to install them.
* npm
  ```sh
  npm install npm@latest -g
  ```

### Installation

Instructtions on installing and setting up your app environment.

Use VSCode as IDE / code editor.

1. Install NodeJS
    ```
    choco install nodejs -y
    ```
1. Install TFX
    ```
    npm install -g tfx-cli
    ``` 
1. VSCode Install the PowerSehll Extention
    ```
    code --install-extension ms-vscode.powershell
    ```
1. GitHub CLI
    ```
    choco install gh -y
    ```
1. Clone the repo
   ```sh
   git clone https://github.com/wkalter/AzureDevOpsRetainTask.git
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- USAGE EXAMPLES -->
## Usage

Use this space to show useful examples of how a project can be used. Additional screenshots, code examples and demos work well in this space. You may also link to more resources.

_For more examples, please refer to the [Documentation](https://example.com)_

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ROADMAP -->
## Roadmap

- [x] Add Initial version
- [x] Add Licence
- [ ] Add Exception handling and logging
- [ ] Add Examples for usages
- [ ] Add Automated tests
- [ ] Add workflow for automating publish to marketplace
    - [ ] Automated Test
    - [ ] Automated package cration
    - [ ] Publish to marketplace

See the [open issues](https://github.com/wkalter/AzureDevOpsRetainTask/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTRIBUTING -->
## Contributing

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.md` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

Wessel Kalter - [@linkedin.com/in/wkalter](https://www.linkedin.com/in/wkalter/)

Project Link: [https://github.com/wkalter/AzureDevOpsRetainTask](https://github.com/wkalter/AzureDevOpsRetainTask)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

Use this space to list resources you find helpful and would like to give credit to. I've included a few of my favorites to kick things off!

* [Choose an Open Source License](https://choosealicense.com)
* [GitHub Emoji Cheat Sheet](https://www.webpagefx.com/tools/emoji-cheat-sheet)
* [GitHub Pages](https://pages.github.com)
* [React Icons](https://react-icons.github.io/react-icons/search)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/wkalter/AzureDevOpsRetainTask.svg?style=for-the-badge
[contributors-url]: https://github.com/wkalter/AzureDevOpsRetainTask/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/wkalter/AzureDevOpsRetainTask.svg?style=for-the-badge
[forks-url]: https://github.com/wkalter/AzureDevOpsRetainTask/network/members
[stars-shield]: https://img.shields.io/github/stars/wkalter/AzureDevOpsRetainTask.svg?style=for-the-badge
[stars-url]: https://github.com/wkalter/AzureDevOpsRetainTask/stargazers
[issues-shield]: https://img.shields.io/github/issues/wkalter/AzureDevOpsRetainTask.svg?style=for-the-badge
[issues-url]: https://github.com/wkalter/AzureDevOpsRetainTask/issues
[license-shield]: https://img.shields.io/github/license/wkalter/AzureDevOpsRetainTask.svg?style=for-the-badge
[license-url]: https://github.com/wkalter/AzureDevOpsRetainTask/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/wkalter/
[product-screenshot]: images/pipeline-example.png

[PowerShell.com]: https://img.shields.io/badge/powershell-0769AD?style=for-the-badge&logo=powershell&logoColor=white
[PowerShell-url]: https://learn.microsoft.com/en-us/powershell/ 
[NodeJS.org]: https://img.shields.io/badge/nodejs-green?style=for-the-badge&logo=nodejs&logoColor=white
[NodeJS-url]: https://nodejs.org/en/
