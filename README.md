# Vizion

Vizion is a ruby gem client library for talking to [VIZION API](https://docs.vizionapi.com/)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'vizion'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install vizion

## Usage

You'll need to generate an api key: [https://vizionapi.com/sign-up](https://vizionapi.com/sign-up).   
Initialize client and making request:

``` ruby
client = Vizion::Client.new("X-API-Key")
client.carriers
```
## List of methods

### Carriers
List of all supported carriers, to view the list [click here](https://www.notion.so/afa65e3d79fb4a33bc5ce5c331576668?v=a7543be9963441b8aa1ad33962774b85).   

```ruby
client.carriers
```

### References

```ruby
client.all_references
client.create_reference
client.reference(id)
client.reference_updates(id)
client.delete_reference(id)
```
## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/vizion. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Vizion project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/vizion/blob/master/CODE_OF_CONDUCT.md).
