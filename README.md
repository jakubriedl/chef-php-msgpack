# php-msgpack-cookbook

Chef cookbook to download and install the PHP extension msgpack - https://github.com/msgpack/msgpack


## Attributes

```
node['php-msgpack']['url'] = 'https://github.com/msgpack/msgpack/archive/master.tar.gz'
node['php-msgpack']['conf_dirs'] = ['/etc/php.d']
node['php-msgpack']['conf_file'] = 'msgpack.ini'
```

## Usage

### php-msgpack::default

Include `php-msgpack` in your node's `run_list`. This will download and install msgpack.

```json
{
  "run_list": [
    "recipe[php-msgpack::default]"
  ]
}
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request
