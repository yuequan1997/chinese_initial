require File.dirname(__FILE__) + '/constant';

module ChineseInitial
  module Core
    def self.get_initial(word)
      return if word.nil? || word.to_s.strip.empty?
      chinese = word[0]
      codepoint = chinese.codepoints[0]
      chinese_initial = (chinese?(codepoint) ? CODE_TABLE[codepoint - CHINESE_CODE_START] : chinese)
      return chinese_initial.upcase
    end

    def self.to_pinyin(word)
      pinyin = ""
      word.each_codepoint do |codepoint|
        pinyin << (chinese?(codepoint) ? CODE_TABLE[codepoint - CHINESE_CODE_START] : chinese)
      end
      return pinyin.downcase
    end

    def self.chinese?(chines_code_point)
      (CHINESE_CODE_START..CHINESE_CODE_END) === chines_code_point
    end
  end
end