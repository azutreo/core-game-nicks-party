Name: "Lighting"
RootId: 6226003319951947227
Objects {
  Id: 2589013842048120169
  Name: "Sun Light"
  Transform {
    Location {
      Z: 750
    }
    Rotation {
      Pitch: -53.8511353
      Yaw: 67.4520798
      Roll: -106.145523
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6226003319951947227
  UnregisteredParameters {
    Overrides {
      Name: "bp:Use Temperature"
      Bool: true
    }
    Overrides {
      Name: "bp:Light Color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Shape"
      Enum {
        Value: "mc:esundiscshapes:0"
      }
    }
    Overrides {
      Name: "bp:Size"
      Float: 15
    }
    Overrides {
      Name: "bp:Light Shaft Bloom"
      Bool: true
    }
    Overrides {
      Name: "bp:Cast Volumetric Shadows"
      Bool: true
    }
    Overrides {
      Name: "bp:Intensity"
      Float: 2.5
    }
    Overrides {
      Name: "bp:Sun Disc Color"
      Color {
        R: 10
        G: 5
        A: 1
      }
    }
    Overrides {
      Name: "bp:Light Shaft Bloom Scale"
      Float: 0.2
    }
    Overrides {
      Name: "bp:Light Shaft Bloom Threshold"
      Float: 0.05
    }
    Overrides {
      Name: "bp:Light Shaft Occlusion"
      Bool: true
    }
    Overrides {
      Name: "bp:Light Shaft Bloom Tint"
      Color {
        R: 1
        G: 0.998476863
        B: 0.77
        A: 1
      }
    }
    Overrides {
      Name: "bp:Cast Shadows"
      Bool: true
    }
    Overrides {
      Name: "bp:Temperature"
      Float: 4000
    }
    Overrides {
      Name: "bp:Draw Sun"
      Bool: true
    }
    Overrides {
      Name: "bp:Dynamic Shadow Distance"
      Float: 25
    }
    Overrides {
      Name: "bp:Distance Fadeout Percentage"
      Float: 0
    }
    Overrides {
      Name: "bp:Soft Distance Shadows"
      Bool: true
    }
    Overrides {
      Name: "bp:Shadow Cascade Count"
      Int: 6
    }
    Overrides {
      Name: "bp:Cascade Distribution Adjustment"
      Float: 2
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
      Id: 16910278292812118833
    }
  }
}
Objects {
  Id: 9050438625771175449
  Name: "Skylight"
  Transform {
    Location {
      Z: 750
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6226003319951947227
  UnregisteredParameters {
    Overrides {
      Name: "bp:Index"
      Int: 3
    }
    Overrides {
      Name: "bp:Occlusion Contrast"
      Float: 0
    }
    Overrides {
      Name: "bp:Tint Color"
      Color {
        R: 0.215860531
        G: 0.215860531
        B: 0.215860531
        A: 1
      }
    }
    Overrides {
      Name: "bp:Blend Amount"
      Float: 0
    }
    Overrides {
      Name: "bp:Cast Shadows"
      Bool: true
    }
    Overrides {
      Name: "bp:Cast Volumetric Shadows"
      Bool: true
    }
    Overrides {
      Name: "bp:Blend Target Image"
      Enum {
        Value: "mc:eambientcubemapssmall:0"
      }
    }
    Overrides {
      Name: "bp:Use Captured Sky"
      Bool: true
    }
    Overrides {
      Name: "bp:Lower Hemisphere Color"
      Color {
        A: 0.5
      }
    }
    Overrides {
      Name: "bp:Occlusion Tint"
      Color {
        A: 0.5
      }
    }
    Overrides {
      Name: "bp:Intensity"
      Float: 2
    }
    Overrides {
      Name: "bp:Indirect Intensity"
      Float: 1
    }
    Overrides {
      Name: "bp:Volumetric Intensity"
      Float: 1
    }
    Overrides {
      Name: "bp:Occlusion Exponent"
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
      Id: 11515840070784317904
    }
  }
}
Objects {
  Id: 12204303777921978602
  Name: "Sky Dome"
  Transform {
    Location {
      Z: 750
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6226003319951947227
  UnregisteredParameters {
    Overrides {
      Name: "bp:Zenith Color"
      Color {
        R: 0.114583313
        G: 0.298476577
        B: 1
        A: 0.886000037
      }
    }
    Overrides {
      Name: "bp:Horizon Color"
      Color {
        R: 0.489468127
        G: 0.480969489
        B: 0.623960376
        A: 0.895000041
      }
    }
    Overrides {
      Name: "bp:Haze Color"
      Color {
        R: 0.32
        G: 0.554172039
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Use Sun Color for Cloud Color"
      Bool: false
    }
    Overrides {
      Name: "bp:Cloud Ambient Brightness"
      Float: 25
    }
    Overrides {
      Name: "bp:Cloud Rim Brightness"
      Float: 2
    }
    Overrides {
      Name: "bp:Cloud Opacity"
      Float: 0.4
    }
    Overrides {
      Name: "bp:Cloud Ambient Color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Cloud Color"
      Color {
        R: 0.350000024
        G: 0.974172175
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Cloud Shape"
      Enum {
        Value: "mc:ecloudshapes:0"
      }
    }
    Overrides {
      Name: "bp:Cloud Lighting Brightness"
      Float: 0
    }
    Overrides {
      Name: "bp:Cloud Wisp Opacity"
      Float: 0.5
    }
    Overrides {
      Name: "bp:Cloud Speed"
      Float: 1
    }
    Overrides {
      Name: "bp:Brightness"
      Float: 1
    }
    Overrides {
      Name: "bp:Background Clouds"
      Bool: true
    }
    Overrides {
      Name: "bp:High Cloud Index"
      Enum {
        Value: "mc:ehighaltitudecloudshapes:1"
      }
    }
    Overrides {
      Name: "bp:High Cloud Opacity"
      Float: 0.25
    }
    Overrides {
      Name: "bp:High Cloud Noise Amount"
      Float: 0
    }
    Overrides {
      Name: "bp:High Cloud Noise Scale"
      Float: 0
    }
    Overrides {
      Name: "bp:Overall Tint"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Haze Falloff"
      Float: 15
    }
    Overrides {
      Name: "bp:Horizon Falloff"
      Float: 6
    }
    Overrides {
      Name: "bp:Clouds"
      Bool: true
    }
    Overrides {
      Name: "bp:Disable Cloud Mask"
      Bool: true
    }
    Overrides {
      Name: "bp:Cloud Sun Behind Transmission"
      Float: 0
    }
    Overrides {
      Name: "bp:Sky Influence On Clouds"
      Float: 0
    }
    Overrides {
      Name: "bp:Cloud Wisp Speed"
      Float: 0.25
    }
    Overrides {
      Name: "bp:High Cloud Brightness"
      Float: 0.5
    }
    Overrides {
      Name: "bp:High Cloud Speed"
      Float: 0.25
    }
    Overrides {
      Name: "bp:High Cloud Color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
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
      Id: 7887238662729938253
    }
  }
}
