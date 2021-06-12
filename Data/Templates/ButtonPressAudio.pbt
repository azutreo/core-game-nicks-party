Assets {
  Id: 4022009464816332245
  Name: "ButtonPressAudio"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 17925005251712296414
      Objects {
        Id: 17925005251712296414
        Name: "ButtonPressAudio"
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
            Id: 9364610688549058894
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
      Id: 9364610688549058894
      Name: "Button Click Press Core 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfxui_click_press_core_01_Cue_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 84
}
