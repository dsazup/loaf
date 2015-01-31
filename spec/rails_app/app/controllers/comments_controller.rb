class Article < Struct.new(:id, :title); end

class CommentsController < ApplicationController

  breadcrumb lambda { |c| c.find_article(c.params[:post_id]).title },
             lambda { |c| c.post_comments_path(c.params[:post_id]) }

  def index
  end

  def show
  end

  def find_article(id)
    ::Article.new(id, 'Post comments')
  end
end
