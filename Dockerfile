FROM ruby:3.0.0

ADD . /Sinatra-Application
WORKDIR /Sinatra-Application

RUN bundle install

EXPOSE 4567

CMD [ "/bin/bash" ]