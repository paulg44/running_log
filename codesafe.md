<%= form_with model: @User do |form| %>
<div class="mb-2">
<%= form.label :username %>
<%= form.text_field :username, class: "form-control", placeholder: "Enter username" %>
</div>
<div class="mb-2">
<%= form.label :password %>
<%= form.text_field :password, class: "form-control", placeholder: "Enter password" %>
</div>
<div class="mb-2">
<%= form.label :password_confirmation %>
<%= form.text_field :password_confirmation, class: "form-control", placeholder: "Confirm Password" %>
</div>
<div class="mb-2">
<%= form.submit "Sign In", class: "btn btn-primary" %>
</div>
<%= link_to "No Account? Sign Up", sign_up_path %>
