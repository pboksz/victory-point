describe "BRP.Models.User", ->
  beforeEach ->
    @model = new BRP.Models.User()

  it "user is a backbone model", ->
    expect(@model instanceof BRP.Models.User).toBeTruthy()
