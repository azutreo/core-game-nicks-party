Name: "Components"
RootId: 13166939408216695751
Objects {
  Id: 12702033472484353609
  Name: "World Leaderboard"
  Transform {
    Location {
      X: -2302.23267
      Y: 1701.03479
      Z: 745.850464
    }
    Rotation {
      Yaw: 77.388
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13166939408216695751
  ChildIds: 3497948396034267555
  ChildIds: 12704531141219998032
  ChildIds: 8070280684017499623
  UnregisteredParameters {
    Overrides {
      Name: "cs:LeaderboardReference"
      NetReference {
        Key: "565D89866BED88BC"
        Type {
          Value: "mc:enetreferencetype:leaderboard"
        }
      }
    }
    Overrides {
      Name: "cs:LeaderboardType"
      String: "GLOBAL"
    }
    Overrides {
      Name: "cs:LeaderboardStat"
      String: "RESOURCE"
    }
    Overrides {
      Name: "cs:LeaderboardPersistence"
      String: "TOTAL"
    }
    Overrides {
      Name: "cs:ResourceName"
      String: "Wins"
    }
    Overrides {
      Name: "cs:DisplayAsInteger"
      Bool: true
    }
    Overrides {
      Name: "cs:UpdateTimer"
      Float: 30
    }
    Overrides {
      Name: "cs:UpdateOnEvent"
      String: "UpdateLeaderboards"
    }
    Overrides {
      Name: "cs:UpdateOnResourceChanged"
      Bool: false
    }
    Overrides {
      Name: "cs:UpdateOnPlayerDied"
      Bool: false
    }
    Overrides {
      Name: "cs:UpdateOnDamageDealt"
      Bool: false
    }
    Overrides {
      Name: "cs:UpdateOnRoundEnd"
      Bool: false
    }
    Overrides {
      Name: "cs:FirstPlaceColor"
      Color {
        R: 1
        G: 0.67954272
        A: 1
      }
    }
    Overrides {
      Name: "cs:SecondPlaceColor"
      Color {
        R: 0.527115345
        G: 0.527115345
        B: 0.527115345
        A: 1
      }
    }
    Overrides {
      Name: "cs:ThirdPlaceColor"
      Color {
        R: 0.610495746
        G: 0.212230787
        B: 0.0318960398
        A: 1
      }
    }
    Overrides {
      Name: "cs:NoPodiumPlacementColor"
      Color {
        R: 0.783538043
        G: 0.701102138
        B: 0.617206752
        A: 1
      }
    }
    Overrides {
      Name: "cs:UsernameColor"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "cs:ScoreColor"
      Color {
        G: 0.496933132
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "cs:ForcedName"
      String: "TOTAL WINS"
    }
    Overrides {
      Name: "cs:LeaderboardType:tooltip"
      String: "The LeaderboardType for the leaderboard referenced | GLOBAL, MONTLY, WEEKLY, DAILY"
    }
    Overrides {
      Name: "cs:LeaderboardStat:tooltip"
      String: "What is being tracked by the leaderboard | RESOURCE, KDR, KILLS, DEATHS, DAMAGE_DEALT"
    }
    Overrides {
      Name: "cs:UpdateTimer:tooltip"
      String: "The seconds for the leaderboard to update naturally; must be greater than 0"
    }
    Overrides {
      Name: "cs:ResourceName:tooltip"
      String: "The name of the resource that will be monitored; only applies if LeaderboardStat is RESOURCE"
    }
    Overrides {
      Name: "cs:DisplayAsInteger:tooltip"
      String: "Determines if the score is shown as an interger (1) or a float (1.0)"
    }
    Overrides {
      Name: "cs:UpdateOnEvent:tooltip"
      String: "The leaderboard will update upon this event being fired"
    }
    Overrides {
      Name: "cs:UpdateOnResourceChanged:tooltip"
      String: "The leaderboard will update upon a player\'s resource changing that corresponds to this leaderboard\'s ResourceName; does not apply if LeaderboardStat is not RESOURCE"
    }
    Overrides {
      Name: "cs:UpdateOnPlayerDied:tooltip"
      String: "The leaderboard will update upon a player dying; does not apply if LeaderboardStat is not KDR, KILLS, or DEATHS"
    }
    Overrides {
      Name: "cs:UpdateOnDamageDealt:tooltip"
      String: "The leaderboard will update upon a player being damaged; does not apply if LeaderboardStat is not DAMAGE_DEALT"
    }
    Overrides {
      Name: "cs:UpdateOnRoundEnd:tooltip"
      String: "The leaderboard will update upon Game.roundEndEvent"
    }
    Overrides {
      Name: "cs:LeaderboardPersistence:tooltip"
      String: "How data should be tracked | TOTAL, ROUND"
    }
    Overrides {
      Name: "cs:LeaderboardReference:tooltip"
      String: "The NetReference for the Leaderboard (View -> Global Leaderboards)"
    }
    Overrides {
      Name: "cs:FirstPlaceColor:tooltip"
      String: "The color for the person in the first place on the leaderbard"
    }
    Overrides {
      Name: "cs:SecondPlaceColor:tooltip"
      String: "The color for the person in the second place on the leaderbard"
    }
    Overrides {
      Name: "cs:ThirdPlaceColor:tooltip"
      String: "The color for the person in the third place on the leaderbard"
    }
    Overrides {
      Name: "cs:NoPodiumPlacementColor:tooltip"
      String: "The color for the everyone not on the podium (not top 3)"
    }
    Overrides {
      Name: "cs:UsernameColor:tooltip"
      String: "The color for each player\'s username"
    }
    Overrides {
      Name: "cs:ScoreColor:tooltip"
      String: "The color for each player\'s score"
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
  Folder {
    IsGroup: true
  }
  InstanceHistory {
    SelfId: 12702033472484353609
    SubobjectId: 16188348558732333763
    InstanceId: 9511519444186046747
    TemplateId: 805713845931935989
    WasRoot: true
  }
}
Objects {
  Id: 8070280684017499623
  Name: "ClientContext"
  Transform {
    Location {
      Z: 200
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12702033472484353609
  ChildIds: 9892428860361779492
  ChildIds: 14405288836021609632
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
  InstanceHistory {
    SelfId: 8070280684017499623
    SubobjectId: 4544488942836156781
    InstanceId: 9511519444186046747
    TemplateId: 805713845931935989
  }
}
Objects {
  Id: 14405288836021609632
  Name: "Screen"
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
  ParentId: 8070280684017499623
  ChildIds: 13922003065866777935
  ChildIds: 853847188722501933
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Folder {
    IsGroup: true
  }
  InstanceHistory {
    SelfId: 14405288836021609632
    SubobjectId: 10882944944214396970
    InstanceId: 9511519444186046747
    TemplateId: 805713845931935989
  }
}
Objects {
  Id: 853847188722501933
  Name: "Entries"
  Transform {
    Location {
      X: -5.01001
      Z: 100
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14405288836021609632
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Folder {
    IsGroup: true
  }
  InstanceHistory {
    SelfId: 853847188722501933
    SubobjectId: 6572819372182273447
    InstanceId: 9511519444186046747
    TemplateId: 805713845931935989
  }
}
Objects {
  Id: 13922003065866777935
  Name: "Header"
  Transform {
    Location {
      X: -5.01001
      Z: 165
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14405288836021609632
  ChildIds: 4588754562459204688
  ChildIds: 6554710766427401031
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Folder {
    IsGroup: true
  }
  InstanceHistory {
    SelfId: 13922003065866777935
    SubobjectId: 10509929409926709701
    InstanceId: 9511519444186046747
    TemplateId: 805713845931935989
  }
}
Objects {
  Id: 6554710766427401031
  Name: "UpdateTimer"
  Transform {
    Location {
      Z: -12.5
    }
    Rotation {
      Yaw: 179.999954
    }
    Scale {
      X: 1
      Y: 0.675
      Z: 0.7
    }
  }
  ParentId: 13922003065866777935
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Text {
    Text: "UPDATES IN 30 SECONDS"
    Color {
      R: 0.3
      G: 0.3
      B: 0.3
      A: 1
    }
    HorizontalSize: 1
    VerticalSize: 1
    HorizontalAlignment {
      Value: "mc:ecoretexthorizontalalign:center"
    }
    VerticalAlignment {
      Value: "mc:ecoretextverticalalign:center"
    }
  }
  InstanceHistory {
    SelfId: 6554710766427401031
    SubobjectId: 727652041633750989
    InstanceId: 9511519444186046747
    TemplateId: 805713845931935989
  }
}
Objects {
  Id: 4588754562459204688
  Name: "Title"
  Transform {
    Location {
      Z: 7
    }
    Rotation {
      Yaw: 179.999954
    }
    Scale {
      X: 1
      Y: 1.25
      Z: 1.25
    }
  }
  ParentId: 13922003065866777935
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Text {
    Text: "LEADERBOARD NAME"
    Color {
      R: 1
      G: 1
      B: 1
      A: 1
    }
    HorizontalSize: 1
    VerticalSize: 1
    HorizontalAlignment {
      Value: "mc:ecoretexthorizontalalign:center"
    }
    VerticalAlignment {
      Value: "mc:ecoretextverticalalign:center"
    }
  }
  InstanceHistory {
    SelfId: 4588754562459204688
    SubobjectId: 8016590877233957082
    InstanceId: 9511519444186046747
    TemplateId: 805713845931935989
  }
}
Objects {
  Id: 9892428860361779492
  Name: "Leaderboard_World"
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
  ParentId: 8070280684017499623
  UnregisteredParameters {
    Overrides {
      Name: "cs:EntryTemplate"
      AssetReference {
        Id: 8174284955678220412
      }
    }
    Overrides {
      Name: "cs:Leaderboard"
      ObjectReference {
        SelfId: 12702033472484353609
      }
    }
    Overrides {
      Name: "cs:Entries"
      ObjectReference {
        SelfId: 853847188722501933
      }
    }
    Overrides {
      Name: "cs:Title"
      ObjectReference {
        SelfId: 4588754562459204688
      }
    }
    Overrides {
      Name: "cs:UpdateTimer"
      ObjectReference {
        SelfId: 6554710766427401031
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
      Id: 7251817848125509980
    }
  }
  InstanceHistory {
    SelfId: 9892428860361779492
    SubobjectId: 15683458843903270318
    InstanceId: 9511519444186046747
    TemplateId: 805713845931935989
  }
}
Objects {
  Id: 12704531141219998032
  Name: "Scenery"
  Transform {
    Location {
      Z: 200
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12702033472484353609
  ChildIds: 12508775104301633547
  ChildIds: 5953560601018334508
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Folder {
    IsGroup: true
  }
  InstanceHistory {
    SelfId: 12704531141219998032
    SubobjectId: 16186410784617786842
    InstanceId: 9511519444186046747
    TemplateId: 805713845931935989
  }
}
Objects {
  Id: 5953560601018334508
  Name: "Underline"
  Transform {
    Location {
      Z: 165
    }
    Rotation {
      Roll: 90
    }
    Scale {
      X: 0.1
      Y: 0.7
      Z: 4
    }
  }
  ParentId: 12704531141219998032
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13948944933562880915
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.4
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1.5
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.5
        G: 0.5
        B: 0.5
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 5953560601018334508
    SubobjectId: 176039273165408678
    InstanceId: 9511519444186046747
    TemplateId: 805713845931935989
  }
}
Objects {
  Id: 12508775104301633547
  Name: "Board"
  Transform {
    Location {
      Z: -35
    }
    Rotation {
    }
    Scale {
      X: 0.1
      Y: 4
      Z: 3.3
    }
  }
  ParentId: 12704531141219998032
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13948944933562880915
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1.5
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 12508775104301633547
    SubobjectId: 18263848789890147457
    InstanceId: 9511519444186046747
    TemplateId: 805713845931935989
  }
}
Objects {
  Id: 3497948396034267555
  Name: "Leaderboard"
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
  ParentId: 12702033472484353609
  UnregisteredParameters {
    Overrides {
      Name: "cs:Leaderboard"
      ObjectReference {
        SelfId: 12702033472484353609
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
      Id: 8833492999091625279
    }
  }
  InstanceHistory {
    SelfId: 3497948396034267555
    SubobjectId: 6945980622011280681
    InstanceId: 9511519444186046747
    TemplateId: 805713845931935989
  }
}
Objects {
  Id: 10257486328202755998
  Name: "World Leaderboard"
  Transform {
    Location {
      X: -1895
      Y: 1545
      Z: 745.850464
    }
    Rotation {
      Yaw: 61.5774841
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13166939408216695751
  ChildIds: 1050584277453586548
  ChildIds: 10254932333705560199
  ChildIds: 5899782423904871472
  UnregisteredParameters {
    Overrides {
      Name: "cs:LeaderboardReference"
      NetReference {
        Key: "3D1B5BED71A1F859"
        Type {
          Value: "mc:enetreferencetype:leaderboard"
        }
      }
    }
    Overrides {
      Name: "cs:LeaderboardType"
      String: "GLOBAL"
    }
    Overrides {
      Name: "cs:LeaderboardStat"
      String: "RESOURCE"
    }
    Overrides {
      Name: "cs:LeaderboardPersistence"
      String: "TOTAL"
    }
    Overrides {
      Name: "cs:ResourceName"
      String: "Currency_Total"
    }
    Overrides {
      Name: "cs:DisplayAsInteger"
      Bool: true
    }
    Overrides {
      Name: "cs:UpdateTimer"
      Float: 30
    }
    Overrides {
      Name: "cs:UpdateOnEvent"
      String: "UpdateLeaderboards"
    }
    Overrides {
      Name: "cs:UpdateOnResourceChanged"
      Bool: false
    }
    Overrides {
      Name: "cs:UpdateOnPlayerDied"
      Bool: false
    }
    Overrides {
      Name: "cs:UpdateOnDamageDealt"
      Bool: false
    }
    Overrides {
      Name: "cs:UpdateOnRoundEnd"
      Bool: false
    }
    Overrides {
      Name: "cs:FirstPlaceColor"
      Color {
        R: 1
        G: 0.67954272
        A: 1
      }
    }
    Overrides {
      Name: "cs:SecondPlaceColor"
      Color {
        R: 0.527115345
        G: 0.527115345
        B: 0.527115345
        A: 1
      }
    }
    Overrides {
      Name: "cs:ThirdPlaceColor"
      Color {
        R: 0.610495746
        G: 0.212230787
        B: 0.0318960398
        A: 1
      }
    }
    Overrides {
      Name: "cs:NoPodiumPlacementColor"
      Color {
        R: 0.783538043
        G: 0.701102138
        B: 0.617206752
        A: 1
      }
    }
    Overrides {
      Name: "cs:UsernameColor"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "cs:ScoreColor"
      Color {
        G: 0.496933132
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "cs:ForcedName"
      String: "TOTAL COINS"
    }
    Overrides {
      Name: "cs:LeaderboardType:tooltip"
      String: "The LeaderboardType for the leaderboard referenced | GLOBAL, MONTLY, WEEKLY, DAILY"
    }
    Overrides {
      Name: "cs:LeaderboardStat:tooltip"
      String: "What is being tracked by the leaderboard | RESOURCE, KDR, KILLS, DEATHS, DAMAGE_DEALT"
    }
    Overrides {
      Name: "cs:UpdateTimer:tooltip"
      String: "The seconds for the leaderboard to update naturally; must be greater than 0"
    }
    Overrides {
      Name: "cs:ResourceName:tooltip"
      String: "The name of the resource that will be monitored; only applies if LeaderboardStat is RESOURCE"
    }
    Overrides {
      Name: "cs:DisplayAsInteger:tooltip"
      String: "Determines if the score is shown as an interger (1) or a float (1.0)"
    }
    Overrides {
      Name: "cs:UpdateOnEvent:tooltip"
      String: "The leaderboard will update upon this event being fired"
    }
    Overrides {
      Name: "cs:UpdateOnResourceChanged:tooltip"
      String: "The leaderboard will update upon a player\'s resource changing that corresponds to this leaderboard\'s ResourceName; does not apply if LeaderboardStat is not RESOURCE"
    }
    Overrides {
      Name: "cs:UpdateOnPlayerDied:tooltip"
      String: "The leaderboard will update upon a player dying; does not apply if LeaderboardStat is not KDR, KILLS, or DEATHS"
    }
    Overrides {
      Name: "cs:UpdateOnDamageDealt:tooltip"
      String: "The leaderboard will update upon a player being damaged; does not apply if LeaderboardStat is not DAMAGE_DEALT"
    }
    Overrides {
      Name: "cs:UpdateOnRoundEnd:tooltip"
      String: "The leaderboard will update upon Game.roundEndEvent"
    }
    Overrides {
      Name: "cs:LeaderboardPersistence:tooltip"
      String: "How data should be tracked | TOTAL, ROUND"
    }
    Overrides {
      Name: "cs:LeaderboardReference:tooltip"
      String: "The NetReference for the Leaderboard (View -> Global Leaderboards)"
    }
    Overrides {
      Name: "cs:FirstPlaceColor:tooltip"
      String: "The color for the person in the first place on the leaderbard"
    }
    Overrides {
      Name: "cs:SecondPlaceColor:tooltip"
      String: "The color for the person in the second place on the leaderbard"
    }
    Overrides {
      Name: "cs:ThirdPlaceColor:tooltip"
      String: "The color for the person in the third place on the leaderbard"
    }
    Overrides {
      Name: "cs:NoPodiumPlacementColor:tooltip"
      String: "The color for the everyone not on the podium (not top 3)"
    }
    Overrides {
      Name: "cs:UsernameColor:tooltip"
      String: "The color for each player\'s username"
    }
    Overrides {
      Name: "cs:ScoreColor:tooltip"
      String: "The color for each player\'s score"
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
  Folder {
    IsGroup: true
  }
  InstanceHistory {
    SelfId: 10257486328202755998
    SubobjectId: 16188348558732333763
    InstanceId: 10340807204968429638
    TemplateId: 805713845931935989
    WasRoot: true
  }
}
Objects {
  Id: 5899782423904871472
  Name: "ClientContext"
  Transform {
    Location {
      Z: 200
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10257486328202755998
  ChildIds: 13211220445775393011
  ChildIds: 18011729456708304247
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
  InstanceHistory {
    SelfId: 5899782423904871472
    SubobjectId: 4544488942836156781
    InstanceId: 10340807204968429638
    TemplateId: 805713845931935989
  }
}
Objects {
  Id: 18011729456708304247
  Name: "Screen"
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
  ParentId: 5899782423904871472
  ChildIds: 18386998105609153688
  ChildIds: 3874819866313298170
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Folder {
    IsGroup: true
  }
  InstanceHistory {
    SelfId: 18011729456708304247
    SubobjectId: 10882944944214396970
    InstanceId: 10340807204968429638
    TemplateId: 805713845931935989
  }
}
Objects {
  Id: 3874819866313298170
  Name: "Entries"
  Transform {
    Location {
      X: -5.01001
      Z: 100
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 18011729456708304247
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Folder {
    IsGroup: true
  }
  InstanceHistory {
    SelfId: 3874819866313298170
    SubobjectId: 6572819372182273447
    InstanceId: 10340807204968429638
    TemplateId: 805713845931935989
  }
}
Objects {
  Id: 18386998105609153688
  Name: "Header"
  Transform {
    Location {
      X: -5.01001
      Z: 165
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 18011729456708304247
  ChildIds: 122123492356990343
  ChildIds: 7271162666388501136
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Folder {
    IsGroup: true
  }
  InstanceHistory {
    SelfId: 18386998105609153688
    SubobjectId: 10509929409926709701
    InstanceId: 10340807204968429638
    TemplateId: 805713845931935989
  }
}
Objects {
  Id: 7271162666388501136
  Name: "UpdateTimer"
  Transform {
    Location {
      Z: -12.5
    }
    Rotation {
      Yaw: 179.999954
    }
    Scale {
      X: 1
      Y: 0.675
      Z: 0.7
    }
  }
  ParentId: 18386998105609153688
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Text {
    Text: "UPDATES IN 30 SECONDS"
    Color {
      R: 0.3
      G: 0.3
      B: 0.3
      A: 1
    }
    HorizontalSize: 1
    VerticalSize: 1
    HorizontalAlignment {
      Value: "mc:ecoretexthorizontalalign:center"
    }
    VerticalAlignment {
      Value: "mc:ecoretextverticalalign:center"
    }
  }
  InstanceHistory {
    SelfId: 7271162666388501136
    SubobjectId: 727652041633750989
    InstanceId: 10340807204968429638
    TemplateId: 805713845931935989
  }
}
Objects {
  Id: 122123492356990343
  Name: "Title"
  Transform {
    Location {
      Z: 7
    }
    Rotation {
      Yaw: 179.999954
    }
    Scale {
      X: 1
      Y: 1.25
      Z: 1.25
    }
  }
  ParentId: 18386998105609153688
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Text {
    Text: "LEADERBOARD NAME"
    Color {
      R: 1
      G: 1
      B: 1
      A: 1
    }
    HorizontalSize: 1
    VerticalSize: 1
    HorizontalAlignment {
      Value: "mc:ecoretexthorizontalalign:center"
    }
    VerticalAlignment {
      Value: "mc:ecoretextverticalalign:center"
    }
  }
  InstanceHistory {
    SelfId: 122123492356990343
    SubobjectId: 8016590877233957082
    InstanceId: 10340807204968429638
    TemplateId: 805713845931935989
  }
}
Objects {
  Id: 13211220445775393011
  Name: "Leaderboard_World"
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
  ParentId: 5899782423904871472
  UnregisteredParameters {
    Overrides {
      Name: "cs:EntryTemplate"
      AssetReference {
        Id: 8174284955678220412
      }
    }
    Overrides {
      Name: "cs:Leaderboard"
      ObjectReference {
        SelfId: 10257486328202755998
      }
    }
    Overrides {
      Name: "cs:Entries"
      ObjectReference {
        SelfId: 3874819866313298170
      }
    }
    Overrides {
      Name: "cs:Title"
      ObjectReference {
        SelfId: 122123492356990343
      }
    }
    Overrides {
      Name: "cs:UpdateTimer"
      ObjectReference {
        SelfId: 7271162666388501136
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
      Id: 7251817848125509980
    }
  }
  InstanceHistory {
    SelfId: 13211220445775393011
    SubobjectId: 15683458843903270318
    InstanceId: 10340807204968429638
    TemplateId: 805713845931935989
  }
}
Objects {
  Id: 10254932333705560199
  Name: "Scenery"
  Transform {
    Location {
      Z: 200
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10257486328202755998
  ChildIds: 10630537960977091036
  ChildIds: 7818269361860977915
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Folder {
    IsGroup: true
  }
  InstanceHistory {
    SelfId: 10254932333705560199
    SubobjectId: 16186410784617786842
    InstanceId: 10340807204968429638
    TemplateId: 805713845931935989
  }
}
Objects {
  Id: 7818269361860977915
  Name: "Underline"
  Transform {
    Location {
      Z: 165
    }
    Rotation {
      Roll: 90
    }
    Scale {
      X: 0.1
      Y: 0.7
      Z: 4
    }
  }
  ParentId: 10254932333705560199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13948944933562880915
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.4
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1.5
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.5
        G: 0.5
        B: 0.5
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 7818269361860977915
    SubobjectId: 176039273165408678
    InstanceId: 10340807204968429638
    TemplateId: 805713845931935989
  }
}
Objects {
  Id: 10630537960977091036
  Name: "Board"
  Transform {
    Location {
      Z: -35
    }
    Rotation {
    }
    Scale {
      X: 0.1
      Y: 4
      Z: 3.3
    }
  }
  ParentId: 10254932333705560199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13948944933562880915
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1.5
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 10630537960977091036
    SubobjectId: 18263848789890147457
    InstanceId: 10340807204968429638
    TemplateId: 805713845931935989
  }
}
Objects {
  Id: 1050584277453586548
  Name: "Leaderboard"
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
  ParentId: 10257486328202755998
  UnregisteredParameters {
    Overrides {
      Name: "cs:Leaderboard"
      ObjectReference {
        SelfId: 10257486328202755998
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
      Id: 8833492999091625279
    }
  }
  InstanceHistory {
    SelfId: 1050584277453586548
    SubobjectId: 6945980622011280681
    InstanceId: 10340807204968429638
    TemplateId: 805713845931935989
  }
}
Objects {
  Id: 164704993830725876
  Name: "Leaderboard Dependencies"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13166939408216695751
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 4193786343402076394
      value {
        Overrides {
          Name: "Name"
          String: "Leaderboard Dependencies"
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 8512242421248770456
    }
  }
}
Objects {
  Id: 17368815459111148485
  Name: "Winners Teleports"
  Transform {
    Location {
      X: -4258.28125
      Y: 1749.99585
      Z: 705.112793
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13166939408216695751
  ChildIds: 8743694861050199591
  ChildIds: 2287782371623051460
  ChildIds: 17319850157062619580
  ChildIds: 12292627944221623258
  ChildIds: 2093959627620841058
  ChildIds: 1276129151367291604
  ChildIds: 13228809742499847724
  ChildIds: 12967357692984980369
  ChildIds: 5722163047449896600
  ChildIds: 15783651116312645184
  ChildIds: 2898579684775870309
  ChildIds: 583546383177979239
  ChildIds: 12551429413501014524
  ChildIds: 13639701687375977644
  ChildIds: 4951690175309033929
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Folder {
    IsGroup: true
  }
}
Objects {
  Id: 4951690175309033929
  Name: "Trigger"
  Transform {
    Location {
      X: -746.070313
      Y: -287.8396
      Z: 0.000122070313
    }
    Rotation {
      Yaw: -90
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17368815459111148485
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
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
  }
}
Objects {
  Id: 13639701687375977644
  Name: "Trigger"
  Transform {
    Location {
      X: 659.636963
      Y: -54.2036133
      Z: 0.000122070313
    }
    Rotation {
      Yaw: -90
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17368815459111148485
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
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
  }
}
Objects {
  Id: 12551429413501014524
  Name: "Trigger"
  Transform {
    Location {
      X: -642.59082
      Y: -184.862915
      Z: 6.10351563e-05
    }
    Rotation {
      Yaw: -90
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17368815459111148485
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
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
  }
}
Objects {
  Id: 583546383177979239
  Name: "Trigger"
  Transform {
    Location {
      X: 589.528564
      Y: 36.8719482
      Z: 6.10351563e-05
    }
    Rotation {
      Yaw: -90
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17368815459111148485
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
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
  }
}
Objects {
  Id: 2898579684775870309
  Name: "Trigger"
  Transform {
    Location {
      X: -542.463379
      Y: -71.427
      Z: 6.10351563e-05
    }
    Rotation {
      Yaw: -90
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17368815459111148485
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
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
  }
}
Objects {
  Id: 15783651116312645184
  Name: "Trigger"
  Transform {
    Location {
      X: 495.984863
      Y: 102.481445
      Z: 6.10351563e-05
    }
    Rotation {
      Yaw: -90
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17368815459111148485
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
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
  }
}
Objects {
  Id: 5722163047449896600
  Name: "Trigger"
  Transform {
    Location {
      X: -433.898926
      Y: 34.7059326
      Z: 6.10351563e-05
    }
    Rotation {
      Yaw: -90
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17368815459111148485
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
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
  }
}
Objects {
  Id: 12967357692984980369
  Name: "Trigger"
  Transform {
    Location {
      X: 393.480469
      Y: 210.251709
      Z: 6.10351563e-05
    }
    Rotation {
      Yaw: -90
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17368815459111148485
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
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
  }
}
Objects {
  Id: 13228809742499847724
  Name: "Trigger"
  Transform {
    Location {
      X: -357.242676
      Y: 145.089355
      Z: 6.10351563e-05
    }
    Rotation {
      Yaw: -90
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17368815459111148485
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
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
  }
}
Objects {
  Id: 1276129151367291604
  Name: "Trigger"
  Transform {
    Location {
      X: 321.279541
      Y: 293.842651
      Z: 6.10351563e-05
    }
    Rotation {
      Yaw: -90
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17368815459111148485
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
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
  }
}
Objects {
  Id: 2093959627620841058
  Name: "Trigger"
  Transform {
    Location {
      X: -246.230469
      Y: 254.127686
    }
    Rotation {
      Yaw: -90
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17368815459111148485
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
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
  }
}
Objects {
  Id: 12292627944221623258
  Name: "Trigger"
  Transform {
    Location {
      X: 219.377441
      Y: 355.180176
    }
    Rotation {
      Yaw: -90
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17368815459111148485
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
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
  }
}
Objects {
  Id: 17319850157062619580
  Name: "Trigger"
  Transform {
    Location {
      X: -134.302734
      Y: 324.346436
    }
    Rotation {
      Yaw: -90
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17368815459111148485
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
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
  }
}
Objects {
  Id: 2287782371623051460
  Name: "Trigger"
  Transform {
    Location {
      X: 98.8828125
      Y: 399.249756
    }
    Rotation {
      Yaw: -90
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17368815459111148485
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
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
  }
}
Objects {
  Id: 8743694861050199591
  Name: "Trigger"
  Transform {
    Location {
      X: -16.2475586
      Y: 390.354248
    }
    Rotation {
      Yaw: -90
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17368815459111148485
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
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
  }
}
Objects {
  Id: 12370017509146771019
  Name: "KillZone"
  Transform {
    Location {
      X: 40000
      Z: 200
    }
    Rotation {
    }
    Scale {
      X: 500
      Y: 500
      Z: 1
    }
  }
  ParentId: 13166939408216695751
  ChildIds: 11696619779953947702
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
  Id: 11696619779953947702
  Name: "KillZone"
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
  ParentId: 12370017509146771019
  UnregisteredParameters {
    Overrides {
      Name: "cs:Trigger"
      ObjectReference {
        SelfId: 12370017509146771019
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
Objects {
  Id: 10814894839949425026
  Name: "PlayerNameplates (PlayerTitles)"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13166939408216695751
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 5332119631449535659
      value {
        Overrides {
          Name: "Name"
          String: "PlayerNameplates (PlayerTitles)"
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 10586040963587922911
      value {
        Overrides {
          Name: "Name"
          String: "PlayerNameplates"
        }
      }
    }
    TemplateAsset {
      Id: 5941104239418069435
    }
  }
}
Objects {
  Id: 15441801793883679828
  Name: "PlayerList (PlayerTitles)"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13166939408216695751
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 7621446724159773466
      value {
        Overrides {
          Name: "Name"
          String: "PlayerList (PlayerTitles)"
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
        Overrides {
          Name: "cs:PlayerNameColorMode"
          String: "TITLE"
        }
      }
    }
    ParameterOverrideMap {
      key: 16618856235282578000
      value {
        Overrides {
          Name: "Name"
          String: "PlayerList"
        }
      }
    }
    TemplateAsset {
      Id: 10390204192043150938
    }
  }
}
Objects {
  Id: 10898754017792291954
  Name: "KillZone"
  Transform {
    Location {
      Z: -450
    }
    Scale {
      X: 1000
      Y: 1000
      Z: 1
    }
  }
  ParentId: 13166939408216695751
  ChildIds: 12913632838920994392
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
  InstanceHistory {
    SelfId: 10898754017792291954
    SubobjectId: 12093201693681357494
    InstanceId: 15121230216687749590
    TemplateId: 18400274360810807788
    WasRoot: true
  }
}
Objects {
  Id: 12913632838920994392
  Name: "KillZone"
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
  ParentId: 10898754017792291954
  UnregisteredParameters {
    Overrides {
      Name: "cs:Trigger"
      ObjectReference {
        SelfId: 10898754017792291954
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
  InstanceHistory {
    SelfId: 12913632838920994392
    SubobjectId: 9486262462885730460
    InstanceId: 15121230216687749590
    TemplateId: 18400274360810807788
  }
}
