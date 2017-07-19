require 'rspec-expectations'
require 'page-object'
require 'require-all'
require 'fig_newton'
require 'data_magic'

require_all 'lib'

Exercise1(PageObject::PageFactory)

PageObject::PageFactory.routes ={
    :default =>{[Exercise1, :Values]}
}[]