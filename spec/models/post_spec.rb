require "rails_helper"

describe Post do
  
  before(:each) do
    @title_example = "T"
    @message_example = "m"
  end
  
  it "is valid when there is a title and a message" do
    post = Post.new(title: @title_example, message: @message_example)
    expect(post).to be_valid
  end
  
  it "is invalid when title is null" do
    post = Post.new(message: @message_example)
    expect(post).to be_invalid
  end
  
  it "is invalid when title is blank" do
    post = Post.new(title: "", message: @message_example)
    expect(post).to be_invalid
  end
  
  it "is invalid when message is null" do
    post = Post.new(title: @title_example)
    expect(post).to be_invalid
  end
  
  it "is invalid when title is blank" do
    post = Post.new(title: @title_example, message: "")
    expect(post).to be_invalid
  end
  
  it "slug_title should be unique" do
    post_1 = Post.new(title: (@title_example + "Anão"), message: @message_example)
    post_2 = Post.new(title: (@title_example + "anao"), message: "other message")
    post_1.save
    expect(post_2).to be_invalid
  end

end