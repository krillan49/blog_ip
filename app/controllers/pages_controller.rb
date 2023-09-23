class PagesController < ApplicationController
  def about
    @heading = 'Страница о нас'
    @text = 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Molestiae, alias nesciunt, labore earum hic blanditiis quos aspernatur quas unde voluptatibus eligendi possimus a quae, natus nostrum perferendis sapiente totam odio!'
    @info = 'https://itproger.com/course/ruby-on-rails'
  end
end
