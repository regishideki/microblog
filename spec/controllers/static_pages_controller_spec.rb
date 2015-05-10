require 'rails_helper'

RSpec.describe StaticPagesController, :type => :controller do

 describe "get home" do
    it "renders index template" do
      #byebug
      get "static_pages/home"
      expect(true).to_be false
    end
  end
end
