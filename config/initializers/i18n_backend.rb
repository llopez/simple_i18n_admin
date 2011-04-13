TRANSLATIONS_STORE = Redis.new
I18n.backend = I18n::Backend::KeyValue.new(TRANSLATIONS_STORE)
