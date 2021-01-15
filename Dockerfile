FROM ruby
WORKDIR /app

RUN curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh
RUN chmod +x nodesource_setup.sh
RUN ./nodesource_setup.sh
RUN apt-get install nodejs
RUN npm install -g yarn

ENV GEM_HOME /app/.bundle
ENV BUNDLE_PATH="$GEM_HOME" \
  BUNDLE_APP_CONFIG="$GEM_HOME"
ENV PATH $GEM_HOME/bin:$BUNDLE_PATH/gems/bin:$PATH

RUN gem install bundler

COPY Gemfile* ./
RUN bundle install

COPY . ./
