xml.instruct! :xml, :version=>"1.0"
xml.declare! :DOCTYPE, :squad, :SYSTEM, "/squad/squad.dtd"
xml.squad(:nick => @squad.tag) {
  xml.name @squad.name
  xml.email (@squad.email.blank?) ? 'n/a' : @squad.email
  xml.web @squad.website
  xml.picture "http://squadxml-404.herokuapp.com/#{@squad.picture}"
  xml.title (@squad.title.blank?) ? 'n/a' : @squad.title
  @squad.squad_members.each do |sm|
    xml.member(:id => sm.uid, :nick => sm.nickname) {
      xml.name sm.name
      xml.email (sm.email.blank?) ? 'n/a' : sm.email
      xml.icq (sm.icq.blank?) ? 'n/a' : sm.icq
      xml.remark (sm.remark) ? 'n/a' : sm.remark
    }
  end
}