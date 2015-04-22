require('rspec')
require('find')


describe('String#finder') do

  it("find a word and replace it") do
    expect(("Hello world").finder("world", "mom")).to(eq("Hello mom"))
  end
  it("finds a partial match and replaces it") do
    expect(("I am walking my cat to the cathedral.").finder("cat", "dog")).to(eq("I am walking my dog to the doghedral."))
  end

end
