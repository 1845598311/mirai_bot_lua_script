--origin by Mzq
--20200806
--MZQ chat bot
--�÷���chat�����������Ҫ˵�Ļ���ʹ�������ƿ����������api
--Ŀǰʵ�ֲ�����@�ķ�ʽ�������죬ֻ������һ���ؼ��ʽ��д�����23333
Event.subscribe("GroupMessageEvent",function (event)
    local msg = event.message
    local group = event.group
    local msg_str = tostring(msg)
    if string.find(msg_str,'chat') then
        msg_result=Http.get("http://api.qingyunke.com/api.php?key=free&appid=0&msg=" ..msg_str)
        local msg_str_a 
        local msg_str_b
        local msg_str_c
        msg_str_a = string.gsub(msg_result,"{\"result\":0,\"content\":\"",'')
        msg_str_b=string.gsub(msg_str_a,"\"}",'')
        msg_str_c= string.gsub(msg_str_b,"chat",'')
        group:sendMessage( Quote(msg)+msg_str_c)
        end
end)
Event.subscribe("FriendMessageEvent",function(event)
    local msg = event.message
    local friend = event.friend
    local msg_str = tostring(msg)
    if string.find(msg_str,'chat') then
        msg_result=Http.get("http://api.qingyunke.com/api.php?key=free&appid=0&msg=" ..msg_str)
        local msg_str_a 
        local msg_str_b
        local msg_str_c
        msg_str_a = string.gsub(msg_result,"{\"result\":0,\"content\":\"",'')
        msg_str_b=string.gsub(msg_str_a,"\"}",'')
        msg_str_c= string.gsub(msg_str_b,"chat",'')
        friend:sendMessage( Quote(msg)+msg_str_c)
        end     
end)


