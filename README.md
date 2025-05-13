# ZipChat Challenge

Challenge described [here](https://zipchat.notion.site/Dummy-AI-e-com-agent-1e371caef48b80158fefd73cf42270ec)

## Solution

It's a full stack Rails application.

It relies on the [ruby_llm](https://github.com/crmne/ruby_llm) gem to power the chat + tool invocation.

There are two tools available:

- ProductTool: responsible for returning products available for shopping (a dummy list at the moment)
- OrderTool: responsible for placing an order (saving a Order record in the database)

Worth highlighting that both tools could easily be extended to integrate with 3rd party APIs, validate the params etc.

The solution is far from ready to production due the short amount of time I had to do it.

I would be more than happy to join a call to discuss improvements.

🎬 A video demo is available in the folder `showcase/demo.mov`.

## Running

Make sure you have installed:

- ruby 3.3.4 (as per the `.ruby-version` file)
- PostgresSQL (16+)

Installing the gems:

```shell
bundle
```

Running the Rails application

```shell
make run
```
