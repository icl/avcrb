require 'spec_helper'
require 'digest/md5'

describe Avcrb::FrameRipper do

  describe "initializing" do
    it "should require a source" do

      lambda { Avcrb::FrameRipper.new() }.should raise_error( ArgumentError)
    end

    it "should work with a source" do
      lambda {Avcrb::FrameRipper.new('somefile')}.should_not raise_error(ArgumentError)
    end

    it "should accept and options hash too" do
      lambda {Avcrb::FrameRipper.new('somefile', :destination => 'somewhere')}.should_not raise_error(ArgumentError)
    end
  end

  describe "ripping frames" do

    before :each do
      @frame = Avcrb::FrameRipper.new(File.expand_path('spec/support/1.m4v'), :destination => File.expand_path('spec/support/out/boom'))
    end

    after :each do
   #   FileUtils.rm Dir.glob('spec/support/out/*')
    end
    it "should rip the first frame by default" do
    pending
      @frame.rip

      Digest::MD5.hexdigest(File.read(@frame.destination + '.jpg')).should == '68ca81ff84f87c95b539f1a909ad8176'
    end

  end

end
