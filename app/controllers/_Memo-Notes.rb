

  <% if @arrival.number == 1  %>
<%= image_tag "https:/maps.googleapis.com/maps/api/staticmap?zoom=15&size=400x300&sensor=false&maptype=roadmap&markers=color:red|#{@flat.address}&key=AIzaSyDHwg9GVtQDA0xSDo7T85nmeNDawCHhm1w" %>




    <div class="main-content" style="background-image: url(<%= image_path "chocolate_arrival#{@arrival.number}.png"%>)">
    </div>

