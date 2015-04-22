require('rspec')
require('find')


describe('String#finder') do

  it("find a word and replace it") do
    expect(("Hello world").finder("world", "mom")).to(eq("Hello mom"))
  end

end
