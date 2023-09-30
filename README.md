# Web Automation Selenium Web Driver & Ruby Proramming Language

This repository contains web test automation scripts written in Ruby using Selenium Web Driver. The automation scenarios cover the login flow and inventory management in Jubelio web application.

## Requirements

1. Install  [Ruby](https://rubyinstaller.org/downloads/) To check installed ruby you can using this command:

```
rvm list
```

2. Install  [Cucumber](https://cucumber.io/docs/installation/) To check you can using this command:

```
cucumber --version
```

3. Install the Selenium Web Driver  in your command line.

```
gem install selenium-webdriver
```

4. Add this to Gemfile 
```
source 'https://rubygems.org'

gem 'capybara'
gem 'cucumber'
gem 'pry'
gem 'rspec'
gem 'webdrivers'
``` 
4. Run this command to install gem
```
bundle install
```
5. Add env file like this ```features/page_object/env.rb```
6. Run this command to install
```
cucumber --init
```
7. Editor (Visual Studio Code)
8. Install Cucumber extension in text editor


## Getting Started

1. Clone this repo using this command:
```
git clone https://github.com/dendyyp/task-5-quality-assurance.git
```
2. Open this repo in your editor
3. Open terminal in your editor
4. To run all scenario can using this command:
```
cucumber
```
5. To run specific/several scenario can using run with tags like this:
```
 bundle exec cucumber -t @login
```
```
 bundle exec cucumber -t @inventory
```
