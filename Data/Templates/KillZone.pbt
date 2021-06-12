Assets {
  Id: 18400274360810807788
  Name: "KillZone"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 12093201693681357494
      Objects {
        Id: 12093201693681357494
        Name: "KillZone"
        Transform {
          Scale {
            X: 1000
            Y: 1000
            Z: 1
          }
        }
        ParentId: 13166939408216695751
        ChildIds: 9486262462885730460
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Trigger {
          TeamSettings {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          TriggerShape_v2 {
            Value: "mc:etriggershape:box"
          }
        }
      }
      Objects {
        Id: 9486262462885730460
        Name: "KillZoneServer"
        Transform {
          Location {
            Z: 500
          }
          Rotation {
          }
          Scale {
            X: 0.000999999931
            Y: 0.000999999931
            Z: 1
          }
        }
        ParentId: 12093201693681357494
        UnregisteredParameters {
          Overrides {
            Name: "cs:Trigger"
            ObjectReference {
              SubObjectId: 12093201693681357494
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
        Script {
          ScriptAsset {
            Id: 5321318700814843422
          }
        }
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 84
}
