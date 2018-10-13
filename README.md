# Notes

I haven't been able to find a note application or service that I've liked. So, I decided to write my own.

## Info

- Ruby 2.5.1
- PostgreSQL

## Getting Started

- Get the encryption key file from a fellow developer. Without it, you will not be able to launch the application. It must be placed in `/config/master.key`

### Default Configurations

**Never** store secret information in the `.env` file **if** it's going to be committed to source control. In that case, they should be stored in the encrypted credentials file, `/config/credentials.yml.enc`

```
RAILS_ENV=development
RACK_ENV=development
LANG=en_US.UTF-8
RAILS_SERVE_STATIC_FILES=enabled
RAILS_LOG_TO_STDOUT=enabled
DATABASE_URL='postgres://postgres:postgres@0.0.0.0:5432/notes_dev'
```
