Assets {
  Id: 16884872173000377019
  Name: "GoAudio"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 16709083779175218923
      Objects {
        Id: 16709083779175218923
        Name: "GoAudio"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 5932927648204624929
        Lifespan: 1
        WantsNetworking: true
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
        Id: 5932927648204624929
        Name: "Go"
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
        ParentId: 16709083779175218923
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        AudioInstance {
          AudioAsset {
            Id: 137589958031262989
          }
          AutoPlay: true
          Transient: true
          Pitch: 100
          Volume: 4
          Falloff: -1
          Radius: -1
        }
      }
    }
    Assets {
      Id: 137589958031262989
      Name: "VO Meta Female \"Go\" 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_vo_meta_female_go_01_Cue_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 84
}
