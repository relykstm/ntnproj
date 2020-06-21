component persistent="true" {

  property name="id" column="id" fieldtype="id" generator="identity";
  property name="testerName"  column="testerName" ormtype="string";
  property name="testerEmail" column="testerEmail" ormtype="string";
  property name="examDate"column="examDate" ormtype="date";

  property name="name" column="name" ormtype="string";
  property name="age" column="age" ormtype="numeric";
  property name="licenseRequired" column="licenseRequired" ormtype="string";
  property name="desc" column="desc" ormtype="string";

  property name="centerName" column="centerName" ormtype="string";
  property name="city" column="city" ormtype="string";
  property name="state" column="state" ormtype="string";

  public any function toStruct(){
    var result = {};

    result.id = THIS.getId();
    result.testerName = THIS.getTesterName();
    result.testerEmail = THIS.getTesterEmail();
    result.examDate = THIS.getExamDate();

    result.name = THIS.getName();
    result.age = THIS.getAge();
    result.licenseRequired = this.getLicenseRequired();
    result.desc = THIS.getDesc();

    result.centerName = THIS.getCenterName();
    result.city = THIS.getCity();
    result.state = THIS.getState();

    return result;
  }

  
}