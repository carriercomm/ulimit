# Limits settings for <%= @ulimit_user %>

<% if @filehandle_limit: %>
<%= @ulimit_user %> - nofile <%= @filehandle_limit %>
<% else: %><% if @filehandle_soft_limit: %><%= @ulimit_user %> soft nofile <%= @filehandle_soft_limit %><% end %>
<% if @filehandle_hard_limit: %><%= @ulimit_user %> hard nofile <%= @filehandle_hard_limit %><% end %>
<% end %>

<% if @process_limit: %>
<%= @ulimit_user %> - nproc <%= @process_limit %>
<% end %>

<% if @memory_limit: %>
<%= @ulimit_user %> - memlock <%= @memory_limit %>
<% end %>

<% if @core_limit: %>
<%= @ulimit_user %> - core <%= @core_limit %>
<% end %>