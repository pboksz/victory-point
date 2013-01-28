describe "BRP.Models.User", ->
  beforeEach ->
    loadFixtures 'user_spec'
    @model = new VP.Models.User()

  it "user is a backbone model", ->
    expect(@model instanceof VP.Models.User).toBeTruthy()
