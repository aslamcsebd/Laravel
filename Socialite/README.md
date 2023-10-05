
# Login with socialite

- You can easily login in your website by socialite.
- Socialite list
    Github
    Facebook
    Google
    LinkedIn etc ...

## Installation on laravel

For example...

```sh
$socialName = [Github, Facebook, Google, LinkedIn];

config/services.php
'github' => [
        'client_id' => env('Github_client_id'),
        'client_secret' => env('Github_client_secret'),
        'redirect' => env('Github_callback_url'),
],

.env file
# Github
    Github_client_id = number
    Github_client_secret = number
    Github_callback_url = https://domainName/github/callback

```
