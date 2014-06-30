class DogHTMLPage

  def initialize(layout = nil)
    @layout = layout || "CONTENT"
  end

  def title(dogs)
    template = <<-TEMPLATE
      <h1>There are

         <% #dog_html_page.each do |dog| %>
        <%= #dog %>
        <% #end %>


      dogs
      </h1>
    TEMPLATE


    options_hash = {:locals => {:some_dogs => dogs}}
    erb template, options_hash
  end
end #end of class