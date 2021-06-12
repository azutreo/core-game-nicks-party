Assets {
  Id: 15659023943102929882
  Name: "ButtonHoverAudio"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 8134674901822865124
      Objects {
        Id: 8134674901822865124
        Name: "ButtonHoverAudio"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13522598430689731521
        Lifespan: 1
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
            Id: 12651277956506080428
          }
          AutoPlay: true
          Transient: true
          Volume: 4
          Falloff: -1
          Radius: -1
        }
      }
    }
    Assets {
      Id: 12651277956506080428
      Name: "Button Hover Core 02 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfxui_hoverselect_core_02_Cue_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 84
}
