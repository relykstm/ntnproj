component persistent="true" {


    property name="id" column="id" fieldtype="id" generator="identity";
    property name="name" column="name" ormtype="string";
    property name="age" column="age" ormtype="numeric";
    property name="licenseRequired" column="licenseRequired" ormtype="string";
    property name="desc" column="desc" ormtype="string";


    public any function toStruct(){
      var result = {};

      result.id = THIS.getId();
      result.name = THIS.getName();
      result.age = THIS.getAge();
      result.author = this.getLicenseRequired();
      result.desc = THIS.getDesc();

      return result;
    }

    public function getOne(id){
        var result = EntityLoadByPK("Exam", '#id#')
        return result;
    }

    public function getAll(){
      var result = entityLoad("Exam", {}, "id") 
      return result;
    }
    
  }