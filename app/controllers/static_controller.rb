class StaticController < ApplicationController
  def index
    render file: rails.root.join('pubic', 'index.html')
  end
end
