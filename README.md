# POP: Publish or Perish  
[![Code Climate](https://codeclimate.com/github/joshmfrankel/POP/badges/gpa.svg)](https://codeclimate.com/github/joshmfrankel/POP)
[![Test Coverage](https://codeclimate.com/github/joshmfrankel/POP/badges/coverage.svg)](https://codeclimate.com/github/joshmfrankel/POP/coverage)
[![Build Status](https://travis-ci.org/joshmfrankel/POP.svg?branch=master)](https://travis-ci.org/joshmfrankel/POP)

An application designed to allow research and graduate students an easy method of
searching for and finding publishing journals with various impact factors.

## Features

### User Auth  
Devise will be used to provide user authorization and authentication. It will be
a role-based system consistening of the following three roles.  

* User  
* Moderator  
* Admin  

#### User  
* Can use search functions  
* Can create a new journal record for moderation  
* Two account types of: Free and Paid  
* Free account is restricted to 5 free searches  
* Paid account has limit removed

#### Moderator  
* Can manage Journal moderation queue records  
* Can manage Tags  

#### Admin  
* Can manage Users and Moderators

### Search  
Will utilize ElasticSearch to provide quick accurate search results. Fuzzy
searching and word stemming will be active.

Will feature a facetted search form to search Journals by multiple criteria  
including:
* title                 [TEXT] or [SELECT]  
* editor                [TEXT] or [SELECT]  
* keywords              [COMMA SEPARATED TERMS]  
* description           [TEXT]  
* impact_factor         [INTEGER]  
* methodology_accepted  [MULTI-SELECT]  

Results will be listed with the addition of: created_at and updated_at columns

## Technology
* Rails 4
* Rspec
* Capybara
* FactoryGirl
* Bootstrap-sass
* Active Admin  
* Devise  
* Elasticsearch  
* Guard  
* Rubocop
