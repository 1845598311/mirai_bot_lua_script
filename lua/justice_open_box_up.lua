--orgin by Mzq
--20210803
--���忪�� �÷������� 
Event.subscribe("GroupMessageEvent",function (event)
    local msg = event.message
	local group = event.group
	local huji 
	local qq 
	if  string.find(tostring(msg),'##') then
	    local msg_str = tostring(msg)
		qq=string.gsub(msg_str,"##",'')
	    group:sendMessage("nmsl!")	
		huji=Http.get("���뿪��api��ַ���ҵľͲ�������" ..qq)
	    group:sendMessage(huji)
	end
end)