class Collection
  include Her::JsonApi::Model

  use_api PUB
  collection_path "/api/collections"

  after_save :decache

  protected

  def decache
    $cache.flush_all if $cache
  end

end
