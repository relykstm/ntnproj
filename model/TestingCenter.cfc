component persistent="true"{


    property name="id" column="id" fieldtype="id" generator="identity";
    property name="centerName" column="centerName" ormtype="string";
    property name="city" column="city" ormtype="string";
    property name="state" column="state" ormtype="string";

    public any function toStruct(){
      var result = {};

      result.id = THIS.getId();
      result.centerName = THIS.getCenterName();
      result.city = THIS.getCity();
      result.state = THIS.getState();

      return result;
    }

    public function getOne(id){
      var result = EntityLoadByPK("TestingCenter", '#id#')
      return result;
    }

    public function getAll(){
      var result = entityLoad("TestingCenter", {}, "id") 
      return result;
    }
  
  }