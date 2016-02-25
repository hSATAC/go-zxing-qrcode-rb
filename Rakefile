require "bundler/gem_tasks"

desc "Build go shared library"
task :build_go do
	`go build -buildmode=c-shared -o libgoqrencoder.so go/bindings.go`
end
