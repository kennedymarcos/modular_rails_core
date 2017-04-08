# modular_rails_core

Generator of core files for a modular rails application.
The idea of this gem/repo is to create a practical way do generate files for one rails modular application.

- One global level was added namespaced as "global" that can be changed for any rails module that you prefer.
- 
### Installation

Create your rails project

```sh
rails new YourProjectName
cd YourProjectName
```
 Copy the above gem to your Gemfile
 ```sh
gem "modular_rails_core", :git => "git://github.com/kennedymarcos/modular_rails_core.git"
```

Run bundle
 ```sh
bundle install
```

Install the modular rails core
 ```sh
rails generate modularcore:install
```

Start the server
 ```sh
rails server
```
 Done!
 You'll be redirected to Dashboard where you can create your new engines and make the Hooks to Dashboard Page.
 
 
License
----

MIT

<https://github.com/kennedymarcos/modular_rails_core>
