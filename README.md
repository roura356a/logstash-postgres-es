# logstash-postgres-es
The `Dockerfile` on this folder creates an image to create and automate Logstash tasks to run PostgreSQL indexing into
any standard ElasticSearch. Intended to be ran as a command and scheduled by used by some sort of cron, it will naturally die
after completion. Don't expect the container to stay up and running.

It basically runs a task/pod against the ES host.

Be sure to have network access to the ES cluster from wherever you are running the image, otherwise it will fail.

## Environment Variables
You need to feed the environment variables specified in the `conf/opt/es.conf` file to make it work.
