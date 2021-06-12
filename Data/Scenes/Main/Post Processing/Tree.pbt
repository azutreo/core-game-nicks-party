Name: "Post Processing"
RootId: 13578565219720700540
Objects {
  Id: 8394682049722793315
  Name: "Color Grading Post Process"
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
  ParentId: 13578565219720700540
  UnregisteredParameters {
    Overrides {
      Name: "bp:Scene Tint"
      Color {
        R: 1
        G: 0.871367335
        B: 0.799102962
        A: 1
      }
    }
    Overrides {
      Name: "bp:Color Saturation"
      Color {
        R: 0.8
        G: 0.8
        B: 0.8
        A: 1
      }
    }
    Overrides {
      Name: "bp:Color Contrast"
      Color {
        R: 1.2
        G: 1.2
        B: 1.2
        A: 1
      }
    }
    Overrides {
      Name: "bp:White Temperature"
      Float: 5000
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
      Id: 7648502452848606468
    }
    TeamSettings {
    }
  }
}
Objects {
  Id: 11175737938529929488
  Name: "Advanced Sketch Line Post Process"
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
  ParentId: 13578565219720700540
  UnregisteredParameters {
    Overrides {
      Name: "bp:Background Color"
      Color {
        R: 1
        G: 1
        B: 1
      }
    }
    Overrides {
      Name: "bp:Highlight Line Color"
      Color {
      }
    }
    Overrides {
      Name: "bp:Contour Line Color"
      Color {
      }
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
      Id: 18075018407704179142
    }
    TeamSettings {
    }
  }
}
Objects {
  Id: 3120007267826036557
  Name: "Advanced Bloom Post Process"
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
  ParentId: 13578565219720700540
  UnregisteredParameters {
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Blueprint {
    BlueprintAsset {
      Id: 13815155579495802618
    }
    TeamSettings {
    }
  }
}
Objects {
  Id: 24316053388073233
  Name: "Lensflare Post Process"
  Transform {
    Location {
      Z: 50
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13578565219720700540
  UnregisteredParameters {
    Overrides {
      Name: "bp:Threshold"
      Float: 1
    }
    Overrides {
      Name: "bp:Bokeh Size"
      Float: 6.87060785
    }
    Overrides {
      Name: "bp:Shape"
      Enum {
        Value: "mc:edofshapes:4"
      }
    }
    Overrides {
      Name: "bp:Intensity"
      Float: 1
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
      Id: 16559349036561283898
    }
  }
}
