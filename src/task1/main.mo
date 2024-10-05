import myBuffer "mo:base/Buffer";


actor {
  let name: Text = "Freelance Community DAO";

  var manifesto: Text = "A community that stands for inclusiveness and eliminates stereotype, providing equal freelance opportunity for all regardless of race, skin color or gender";

  var goals:myBuffer.Buffer<Text> = myBuffer.Buffer<Text>(0);

  public query func getName() : async Text{
    return name;
  };

  public query func getManifesto() : async Text{
    return manifesto;
  };

  public func setManifesto(newManifesto: Text) : async (){
    manifesto := newManifesto;
    return;
  };

  public func addGoal(newGoal:Text) : async (){
    goals.add(newGoal);
    return;
  };

  public query func getGoals() : async [Text]{
    return myBuffer.toArray(goals);
  }
}