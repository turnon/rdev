cat <<EOF > Dockerfile.rdev
FROM daocloud.io/shutdown/rdev:$1

COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install --jobs 20 --retry 5

CMD ["/bin/bash"]
EOF

docker build -t $2 -f Dockerfile.rdev .

rm Dockerfile.rdev
