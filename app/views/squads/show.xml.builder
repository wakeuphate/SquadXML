xml.instruct! :xml, :version=>"1.0"
xml.declare! :DOCTYPE, :squad, :SYSTEM, "/squad/squad.dtd"
xml.squad(:nick => @squad.tag) {
  xml.name @squad.name
  xml.email @squad.email
  xml.web @squad.website
  xml.picture @squad.picture
  xml.title @squad.title
  @squad.squad_members.each do |sm|
    xml.member(:id => sm.uid, :nick => sm.nickname) {
      xml.name sm.name
      xml.email sm.email
      xml.icq sm.icq
      xml.remark sm.remark
    }
  end
}