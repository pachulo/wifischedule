
require("luci.tools.webadmin")

m = Map("wifi_schedule", translate("Wifi Schedule"),
	translate(""))

s = m:section(TypedSection, "wifischedule", "")
s.addremove = false
s.anonymous = false

s:tab("wd1", translate("Monday"))
s:tab("wd2", translate("Tuesday"))
s:tab("wd3", translate("Wednesday"))
s:tab("wd4", translate("Thursday"))
s:tab("wd5", translate("Friday"))
s:tab("wd6", translate("Saturday"))
s:tab("wd7", translate("Sunday"))

for day=1,7 do
	for i=0,23 do
		f=i
		t=i+1
		s:taboption("wd"..day, Flag, day.."_"..f,
        		translate(f..":00 - "..t..":00"),
	        	translate(""))
	end
end

return m
