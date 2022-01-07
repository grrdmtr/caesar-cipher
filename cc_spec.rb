require './lib/caesar_cipher'

describe "#convert_to_ordinals" do
  it "returns the same string at index 0" do
    expect(cipher('alo')).to eql('alo')
  end

  it "returns the string with index 3" do
    expect(cipher('Graur Dumitru',3)).to eql('Doxro Arjfqor')
  end

  it "returns the string shofted by 11" do
    expect(cipher('Graur Dumitru',11)).to eql('Vgpjg Sjbxigj')
  end

  it "returns the string shofted by 21" do
    expect(cipher('Graur Dumitru',21)).to eql('Lwfzw Izrnywz')
  end

  it "returns the string shofted by 36" do
    expect(cipher('Hey fuck you and your entire life scum!',36)).to eql('Xuo vksa oek qdt oekh udjyhu byvu iskc!')
  end
end