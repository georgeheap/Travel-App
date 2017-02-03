require "shrine"
require "shrine/storage/s3"
# require "shrine/storage/file_system"

s3_options = {
  access_key_id: ENV["s3_access_id"],
  secret_access_key: ENV["s3_secret"],
  region: ENV["s3_region"],
  bucket: ENV["s3_bucket"]
}

Shrine.storages = {
  # cache: Shrine::Storage::FileSystem.new("public", prefix: "uploads/cache"), # temporary
  # store: Shrine::Storage::FileSystem.new("public", prefix: "uploads/store"), # permanent

  cache: Shrine::Storage::S3.new(prefix: "cache", **s3_options), # temporary
  store: Shrine::Storage::S3.new(prefix: "store", **s3_options) # permanent
}

Shrine.plugin :activerecord
Shrine.plugin :cached_attachment_data # for forms
