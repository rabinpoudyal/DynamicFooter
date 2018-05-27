RSpec.describe RabinDynamicFooter do
  it "has a version number" do
    expect(RabinDynamicFooter::VERSION).not_to be nil
  end

  it "Returns dynamic copyright footer" do
  	expected = "&copy; #{Time.now.year} | All Rights Reserved | RabinPoudyal | RailsDeveloper"
  	result = RabinDynamicFooter::FooterCopyright.copyright("RabinPoudyal", "RailsDeveloper")
  	expect(result).to eq expected
  end
end
