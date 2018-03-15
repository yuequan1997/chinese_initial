# encoding: utf-8
require 'spec_helper'

describe ChineseInitial do

  it '简体中文正常转换' do
    expect(ChineseInitial.to('啊')).to eq 'A'
    expect(ChineseInitial.to('吧')).to eq 'B'
    expect(ChineseInitial.to('从')).to eq 'C'
    expect(ChineseInitial.to('的')).to eq 'D'
    expect(ChineseInitial.to('额')).to eq 'E'
    expect(ChineseInitial.to('发')).to eq 'F'
    expect(ChineseInitial.to('个')).to eq 'G'
    expect(ChineseInitial.to('好')).to eq 'H'
    expect(ChineseInitial.to('i')).to eq 'I'
    expect(ChineseInitial.to('就')).to eq 'J'
    expect(ChineseInitial.to('看')).to eq 'K'
    expect(ChineseInitial.to('了')).to eq 'L'
    expect(ChineseInitial.to('吗')).to eq 'M'
    expect(ChineseInitial.to('你')).to eq 'N'
    expect(ChineseInitial.to('哦')).to eq 'O'
    expect(ChineseInitial.to('怕')).to eq 'P'
    expect(ChineseInitial.to('去')).to eq 'Q'
    expect(ChineseInitial.to('人')).to eq 'R'
    expect(ChineseInitial.to('是')).to eq 'S'
    expect(ChineseInitial.to('他')).to eq 'T'
    expect(ChineseInitial.to('u')).to eq 'U'
    expect(ChineseInitial.to('v')).to eq 'V'
    expect(ChineseInitial.to('我')).to eq 'W'
    expect(ChineseInitial.to('想')).to eq 'X'
    expect(ChineseInitial.to('月')).to eq 'Y'
    expect(ChineseInitial.to('在')).to eq 'Z'
  end

  it '英文转英文' do
    expect(ChineseInitial.to('YQ')).to eq 'Y'
  end

  it '中文转拼音首字母' do
    expect(ChineseInitial.to_pinyin("月泉")).to eq 'yq'
  end
end