docker build -t $2 -<<EOF
FROM daocloud.io/shutdown/rdev:$1

COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install --jobs 20 --retry 5
EOF