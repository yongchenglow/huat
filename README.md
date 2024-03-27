# Introduction

Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.

# Contents

# Setup

## Setting up your computer

Go to the following [website](https://github.com/lewagon/setup) and set up your computer according to the operating system that you are using.

## Initializing the Project

You can use the Le Wagon's template in order to setup your project. Simply run the following code and ensure you give it a proper project name. Also push your code to Github.

```bash
rails new \
  -d postgresql \
  -m https://raw.githubusercontent.com/lewagon/rails-templates/master/devise.rb \
  CHANGE_THIS_TO_YOUR_RAILS_APP_NAME
```

## Add Basic Github main branch configurations

1. Go to your repository Settings
2. Select branches on the sidebar
3. Add branch protection rule to main branch
4. Type `main` for the branch name
5. Select "Require pull request before merging"
6. Select "Require approvals"
7. Select "Require status checks to pass before merging"
8. Select "Require conversation resolution before merging"
9. Click Save

The items added are pretty self explanatory. These are the usual project configurations used for most projects.

## Adding VS Code Extensions

Run the following code

```bash
mkdir .vscode
touch .vscode/extensions.json
```

Add the recommended extensions from the following [file](.vscode/extensions.json)

These extensions will help you code better. You can read more about the different kind of extensions. Those who clone your project and open using vscode will be prompted to install these extensions.

## VS Code Settings

Adjust your VS Code settings `code > preferences > settings`, add a `,` at the end of the file and paste the following code

```JSON
"files.associations": {
  "*.erb": "erb"
},
"files.associations": {
  "*.erb": "erb"
},
"ruby.useBundler": true, //run non-lint commands with bundle exec
"ruby.useLanguageServer": true, // use the internal language server (see below)
"ruby.lint": {
  "rubocop": {
    "useBundler": true // enable rubocop via bundler
  },
  "reek": {
    "useBundler": true // enable reek via bundler
  }
},
"ruby.format": "rubocop" // use rubocop for formatting
"editor.bracketPairColorization.enabled": true,
"editor.defaultFormatter": "esbenp.prettier-vscode",
"editor.formatOnSave": true,
"editor.codeActionsOnSave": {
  "source.fixAll": true
},
```

If there is a yellow squigily line in your settings.json, most likely the code is repeated. Try to combine them.

We do this so that VSCode will automatically format your ruby code. This will be really helpful once we install rubocop and make it compatible with the project.

## Commit linting

Install the overcommit gem by running the following

```bash
gem install overcommit
touch .overcommit.yml
```

after which copy and the paste the contents from the following [file](.overcommit.yml). After which install the hooks

```bash
overcommit --install
overcommit --sign
```

This ensures that all our commits contains a capitalized subject in the following format `<type>: <description>` and it not longer than 72 characters long. A subject must also be followed by an empty line before any description is written. Companies will often have some kind of commit lint formats to follow to ensure consistency. We will be following [convential commit format](https://www.conventionalcommits.org/en/v1.0.0/)
