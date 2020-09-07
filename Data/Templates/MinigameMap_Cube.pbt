Assets {
  Id: 6587317539998951871
  Name: "MinigameMap_Cube"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 4303604243838383401
      Objects {
        Id: 4303604243838383401
        Name: "MinigameMap_Cube"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 9749982592839436512
        ChildIds: 2158523499759849564
        ChildIds: 4871927388353784472
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
        }
      }
      Objects {
        Id: 9749982592839436512
        Name: "Environment"
        Transform {
          Location {
            Z: -50
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4303604243838383401
        ChildIds: 1613886306720378681
        ChildIds: 17802985751461298620
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
          FilePartitionName: "Environment"
        }
      }
      Objects {
        Id: 1613886306720378681
        Name: "Lighting"
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
        ParentId: 9749982592839436512
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
          FilePartitionName: "Lighting_1"
        }
      }
      Objects {
        Id: 17802985751461298620
        Name: "Post Processing"
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
        ParentId: 9749982592839436512
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
          FilePartitionName: "Post Processing"
        }
      }
      Objects {
        Id: 2158523499759849564
        Name: "Components"
        Transform {
          Location {
            Z: -50
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4303604243838383401
        ChildIds: 14231716551071963842
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
          FilePartitionName: "Components"
        }
      }
      Objects {
        Id: 14231716551071963842
        Name: "Void"
        Transform {
          Location {
            Z: -450
          }
          Rotation {
          }
          Scale {
            X: 1000
            Y: 1000
            Z: 1
          }
        }
        ParentId: 2158523499759849564
        ChildIds: 14733713208385294527
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
        Id: 14733713208385294527
        Name: "Void"
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
        ParentId: 14231716551071963842
        UnregisteredParameters {
          Overrides {
            Name: "cs:Trigger"
            ObjectReference {
              SubObjectId: 14231716551071963842
            }
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 5321318700814843422
          }
        }
      }
      Objects {
        Id: 4871927388353784472
        Name: "Scenery"
        Transform {
          Location {
            Z: -50
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4303604243838383401
        ChildIds: 11520877365129403926
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
          FilePartitionName: "Scenery"
        }
      }
      Objects {
        Id: 11520877365129403926
        Name: "Ground"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 50
            Y: 50
            Z: 1
          }
        }
        ParentId: 4871927388353784472
        UnregisteredParameters {
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
    }
    Assets {
      Id: 12095835209017042614
      Name: "Cube"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_002"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 62
}
