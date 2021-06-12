Assets {
  Id: 17700212637857539044
  Name: "Trail Yellow"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 13342341604241167294
      Objects {
        Id: 13342341604241167294
        Name: "Trail Yellow"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        UnregisteredParameters {
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 3
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 1
              G: 0.830770075
              B: 0.0437350273
              A: 1
            }
          }
          Overrides {
            Name: "bp:ColorB"
            Color {
              R: 1
              G: 0.830770075
              B: 0.0437350273
              A: 1
            }
          }
          Overrides {
            Name: "bp:ColorC"
            Color {
              R: 1
              G: 0.830770075
              B: 0.0437350273
              A: 1
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 2
          }
          Overrides {
            Name: "bp:Life"
            Float: 1
          }
        }
        WantsNetworking: true
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
            Id: 13314000148938821048
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
    }
    Assets {
      Id: 13314000148938821048
      Name: "Basic Projectile Trail VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_basic_projectile_trail"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 84
}
