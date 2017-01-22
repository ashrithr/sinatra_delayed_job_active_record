Sinatra app configured to work with ActiveRecord-Postgres

1. Configure the `config/database.yml` file to match your environment

2. Install required gems

    ```
    bundle install
    ```

3. Run database migration to create table required for delyaed job in postgres:

    ```
    RAILS_ENV=development bundle exec rake db:create
    RAILS_ENV=development bundle exec rake db:migrate
    ```

4. Run delayed job:

    ```
    RAILS_ENV=development bin/delayed_job.rb run
    ```

5. Start the Sinatra app:

    ```
    rackup
    ```
