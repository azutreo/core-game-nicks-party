Name: "VFX"
RootId: 12725931183822103407
Objects {
  Id: 8346375048466004125
  Name: "Client VFX"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12725931183822103407
  ChildIds: 6112730021393246553
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  NetworkContext {
  }
}
Objects {
  Id: 6112730021393246553
  Name: "Confetti"
  Transform {
    Location {
      X: -9857.54199
      Y: 5905.28467
      Z: 2192.75635
    }
    Rotation {
    }
    Scale {
      X: 26.4456177
      Y: 26.4456177
      Z: 26.4456177
    }
  }
  ParentId: 8346375048466004125
  UnregisteredParameters {
    Overrides {
      Name: "bp:Volume Type"
      Enum {
        Value: "mc:evfxvolumetype:1"
      }
    }
    Overrides {
      Name: "bp:density"
      Float: 10
    }
    Overrides {
      Name: "bp:Particle Scale Multiplier"
      Float: 10
    }
    Overrides {
      Name: "bp:Curl Variance"
      Float: 5
    }
    Overrides {
      Name: "bp:Wind Speed"
      Vector {
      }
    }
    Overrides {
      Name: "bp:Local Space"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Blueprint {
    BlueprintAsset {
      Id: 4205175272788604099
    }
    TeamSettings {
    }
    Vfx {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 18172367295591687671
  Name: "Campfire"
  Transform {
    Location {
      X: -3194.37793
      Y: 6400.7041
      Z: 2215.56177
    }
    Rotation {
    }
    Scale {
      X: 1.97354722
      Y: 1.97354722
      Z: 1.97354722
    }
  }
  ParentId: 12725931183822103407
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Blueprint {
    BlueprintAsset {
      Id: 2452271612798415985
    }
    TeamSettings {
    }
    Vfx {
      AutoPlay: true
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
}
