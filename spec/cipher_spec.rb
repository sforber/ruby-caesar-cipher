require "./caesar-cipher"

describe '#caesarCipher' do
    it "works with no shift" do
        expect(caesarCipher("hello", 0)).to eql("hello")
    end

    it "works with a small positive shift" do
        expect(caesarCipher("abc", 2)).to eql("yza")
    end

    it "works with a small negative shift" do
        expect(caesarCipher("cde", -2)).to eql("efg")
    end

    it "works with a large shift" do
        expect(caesarCipher("abc", 27)).to eql("zab")
    end

    it "works with a large negative shift" do
        expect(caesarCipher("abc", -27)).to eql("bcd")
    end

    it "works with multiple words" do
        expect(caesarCipher("hello world", 1)).to eql("gdkkn vnqkc")
    end

    it "works with uppercase letters" do
        expect(caesarCipher("HeLLo", 1)).to eql("GdKKn")
    end
end