Name: "Components"
RootId: 13166939408216695751
Objects {
  Id: 14415300772706496238
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
  ParentId: 13166939408216695751
  ChildIds: 11117236302035066375
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
  Id: 11117236302035066375
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
  ParentId: 14415300772706496238
  UnregisteredParameters {
    Overrides {
      Name: "cs:Trigger"
      ObjectReference {
        SelfId: 14415300772706496238
      }
    }
  }
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
