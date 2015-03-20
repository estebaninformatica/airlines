#!/bin/env ruby
# encoding: utf-8

class Airline < ActiveRecord::Base
  # has_many :fare_airlines
  # has_many :internal_aero_infos
  # belongs_to :general_tax, :class_name => "Tax", :foreign_key => "general_tax_id"
  # belongs_to :general_markup, :class_name => "Markup", :foreign_key => "general_markup_id"
  include Rails.application.routes.url_helpers
  include UrlMethod
  scope :search, ->(term) { where('airlines.name LIKE ?', "%#{term}%").order("airlines.name") }
end
