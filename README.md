<a name="readme-top"></a>

<div align="center">
  <h3><b>Recipe App</b></h3>
</div>

# 📗 Table of Contents

- [� Table of Contents](#-table-of-contents)
- [📖 Recipe App ](#-recipe-app-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [🚀 Live Demo ](#-live-demo-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
      - [Check your Ruby version or install it](#check-your-ruby-version-or-install-it)
    - [Clone the repository](#clone-the-repository)
    - [Install](#install)
      - [.env File Structure](#env-file-structure)
    - [Usage](#usage)
    - [Testing](#testing)
  - [👥 Authors ](#-authors-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [📝 License ](#-license-)

# 📖 Recipe App <a name="about-project"></a>

> It is a simple Recipe App where you can post recipes and foods, and edit or remove them.

**Recipe App** is an application for sharing lessons and experiences on coding with Ruby on Rails!

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

> This Web App was built with Ruby on Rails, using Gitflow and customized Linters

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Rails</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **Posting Recipes** to share public and private user-created recipes
- **Shopping** to trade plates
- **Display** preparation and cooking time

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🚀 Live Demo <a name="live-demo"></a>

> Coming soon...

<!-- - [Live Demo Link](https://yourdeployedapplicationlink.com) -->

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 💻 Getting Started <a name="getting-started"></a>

### Prerequisites

#### Check your Ruby version or install it

```shell
ruby --version && irb
```

The ouput should start with something like `ruby 3.1.2`

If not, install the right ruby version using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):

```shell
rbenv install 3.1.2
```

To get a local copy up and running, follow these steps.

### Clone the repository

```shell
git clone https://github.com/dialite/recipe-app.git
cd blog-app-ror
```

### Install

- Ensure you have PostgreSQL installed before running the application `psql --version`
- Run `bundle install`
- Create a `.env` file in the project's root folder to assign variable values for the psql database (linked to the config/database.yml)
- Run `rails db:create` and then `rails db:migrate`
- Run `rails server`
- Open Browser `http://localhost:3000/`

#### .env File Structure

This is the intended file content for the `.env` file:

```
POSTGRES_HOST='localhost'
POSTGRES_USER='username'  # <-- replace here
POSTGRES_PASSWORD='password'  # <-- replace here
POSTGRES_DEV_DB='recipe_ror_app_dev'
POSTGRES_DEV_DB='recipe_app_dev'
POSTGRES_TEST_DB='recipe_app_test'
POSTGRES_PROD_DB='recipe_app_prod
```

Replacing the variable values where needed (most importantly `username` and `password`)

### Usage

To run the project, execute the following command:

```sh
  rails server
```

### Testing

To test and utilize the code, use the terminal and run ruby by inputting `irb` in the command line, or by using an extension in Visual Studio Code like _Code runner_

The user then can modify and play with the files as needed

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 👥 Authors <a name="authors"></a>

👤 **raymond olisa**

- GitHub: [@dialite](https://github.com/dialite)
- LinkedIn: [Raymond Olisa](https://www.linkedin.com/in/raymond-olisa-775929243/)

👤 **Tamana Balkhi**

- GitHub: [@tamana-Balkhi](https://github.com/tamana-Balkhi)
- LinkedIn: [Tamana Balkhi](https://linkedin.com/in/linkedinhandle)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🔭 Future Features <a name="future-features"></a>

- **Structured user rights**
- **Add wish list**
- **Time counter for food preparation**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ⭐️ Show your support <a name="support"></a>

Give a ⭐️ if you like this project!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🙏 Acknowledgments <a name="acknowledgements"></a>

- Hat tip to anyone whose code was used
- Inspiration
- To all the collaborators for the Readme Template
- The Microverse Team

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE.md) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
