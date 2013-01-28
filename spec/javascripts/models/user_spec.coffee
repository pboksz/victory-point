describe "BRP.Models.User", ->
  beforeEach ->
    loadFixtures 'user_spec'
    @model = new BRP.Models.User()

  it "user is a backbone model", ->
    expect(@model instanceof BRP.Models.User).toBeTruthy()
