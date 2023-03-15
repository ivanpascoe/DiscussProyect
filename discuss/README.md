# Discuss

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).


# To set your env variables

First you have to register your app in the OAuth Apps  of the developer settings at github to get your own CLIENT_SECRET and CLIENT_ID tokens

https://github.com/settings/developers

Once you have your own CLIENT_SECRET and CLIENT_ID there are two ways to set them safely as you may require to know both.

1. Simply add your tokens to a .env file and save it.
   It would look like this:
   `CLIENT_SECRET="1435dfghk1324qjg346"`
   `CLIENT_ID="dfgfh8q69256256y"`

   Don't forget to add your .env file to the .gitignore

2. Set your env variables manually using the export command in your temninal.
  
  `export CLIENT_SECRET="1435dfghk1324qjg346"`

This should be enough to get you ready to go. 
   


## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
