require 'spec_helper'
require 'omniauth-twingl'

describe OmniAuth::Strategies::Twingl do
  subject do
    OmniAuth::Strategies::Twingl.new(nil, {})
  end

  describe "#client" do
    it "should point to the twingl API" do
      subject.client.site.should eq "http://api.twin.gl"
    end
  end

  describe "#callback_path" do
    it "should have the correct callback path" do
      subject.callback_path.should eq "/auth/twingl/callback"
    end
  end
end
