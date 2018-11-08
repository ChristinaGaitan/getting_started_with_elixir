# mix help
# mix help hex.search
# mix hex.search facebook

# New app
# mix new
# mix help new

# To create a new application we need to provide a PATH in lower_case
# mix new pluralsight_tweet --sup

#================================
# App with Supervisor (--sup)
#================================

# calc 1 + 1
# calc "no valid input for a clac"

# when we run the second option the cal app will crash and we'll need to reestart it
# in this case, we are the "supervisor", we monitoring the app and restart it whe it crashes

# In Elixir another process can be the supervisor
# the only thing that supervisor does is watching other process and restart them if they crash

#================================
# Umbrella project
#================================
# Has other Elixir projects undereath it
# one app could depend on otherones, but they can be deployed separately

#================================
# Hex (hex.pm)
#================================
# Package manager for elixir (hex == gems)

# 1. Add the hex
# defp deps do
#   [
#     {:credo, "~> 0.4.11"}
#     # {:dep_from_hexpm, "~> 0.3.0"},
#     # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
#   ]
# end

# 2. Run mix deps.get
# Gets our dependencies and their dependencies
