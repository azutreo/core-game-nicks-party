Name: "Welcome Screen"
RootId: 5197396327768059678
Objects {
  Id: 17009665302100307373
  Name: "Vignette Grain Post Process"
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
  ParentId: 5197396327768059678
  UnregisteredParameters {
    Overrides {
      Name: "bp:Vignette Intensity"
      Float: 1
    }
    Overrides {
      Name: "bp:Grain Jitter"
      Float: 0
    }
    Overrides {
      Name: "bp:Grain Intensity"
      Float: 0
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Blueprint {
    BlueprintAsset {
      Id: 5264410925987268182
    }
    TeamSettings {
    }
  }
}
Objects {
  Id: 2569404749921385947
  Name: "Radial Blur Post Process"
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
  ParentId: 5197396327768059678
  UnregisteredParameters {
    Overrides {
      Name: "bp:Clear Radius"
      Float: 0
    }
    Overrides {
      Name: "bp:Brightness Shift"
      Float: 0
    }
    Overrides {
      Name: "bp:Center Area Contrast"
      Float: 0
    }
    Overrides {
      Name: "bp:Blur Distance"
      Float: 2
    }
    Overrides {
      Name: "bp:Effect Strength"
      Float: 1
    }
    Overrides {
      Name: "bp:Unbounded"
      Bool: true
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Blueprint {
    BlueprintAsset {
      Id: 17361318722141711801
    }
    TeamSettings {
    }
  }
}
