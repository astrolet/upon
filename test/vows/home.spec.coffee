vows =    require "vows"
assert =  require "assert"
Home = require("../../index").Home

input =
  geo:
    lat: "43N13"
    lon: "27E55"
  time: "1974-06-30T23:45:00"

output =
  at: "43N13,27E55"
  tz: "+02:00"
  iso: "1974-06-30T23:45:00+02:00"
  utc: "1974-06-30T21:45:00.000Z"
  time: "Sun Jun 30 1974 23:45:00 GMT+0200 (EET)"

vows.describe("Home").addBatch(

  "an instance without moment":
    topic: ->
      new Home input["geo"]

    "is about the present now": (home) ->
      # NOTE: now moves on all the time -
      # part of what is called `spacetime`, a `home` has a *when* attached to it.
      assert.instanceOf home.time, Date
      assert.isString   home.utc
      assert.isString   home.iso

      ###
      assert.equal output["at"],      home.at
      assert.equal output["tz"],      home.tz
      assert.equal output["iso"],     home.iso
      assert.equal output["utc"],     home.utc
      assert.equal output["time"],    home.time
      ###

).export module
