require "chinese_initial/version"
require "chinese_initial/core"
module ChineseInitial
  def self.to(word)
    ChineseInitial::Core.get_initial(word)
  end

  def self.to_pinyin(word)
    ChineseInitial::Core.to_pinyin(word)
  end
end
