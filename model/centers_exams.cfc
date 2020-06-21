component persistent="true" {

    property name="id" column="id" fieldtype="id" generator="identity";
    property name="centerid" column="centerid" ormtype="numeric";
    property name="examid" column="examid" ormtype="numeric";
    
    public any function toStruct(){
      var result = {};

      result.id = THIS.getId();
      result.centerid = THIS.getCenterId();
      result.examid = THIS.getExamId();

      return result;
    }

    
  }