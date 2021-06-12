Assets {
  Id: 530525005157977301
  Name: "ButtonReleaseAudio"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 3049425083388725572
      Objects {
        Id: 3049425083388725572
        Name: "ButtonReleaseAudio"
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
            Id: 1614109199174767681
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
      Id: 1614109199174767681
      Name: "Button Click Release Core 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfxui_click_release_core_01_Cue_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 84
}
