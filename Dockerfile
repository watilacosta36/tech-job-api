FROM ruby:3.4.4-bullseye

RUN apt update -qq && \
    apt install --no-install-recommends -y build-essential  postgresql-client git libpq-dev libvips pkg-config vim

ENV BUNDLER_VERSION=2.6.9
ENV ELASTICSEARCH_URL=http://opensearch:9200

WORKDIR /home/tech_job
COPY Gemfile /home/tech_job/Gemfile
COPY Gemfile.lock /home/tech_job/Gemfile.lock

RUN gem install bundler -v $BUNDLER_VERSION
RUN bundle install

RUN chown -R $USER:$USER .

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]