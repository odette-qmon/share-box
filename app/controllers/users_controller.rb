class UsersController < ApplicationController
  has_many :documents, dependent: :destroy
end
