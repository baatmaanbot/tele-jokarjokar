
--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀ 
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ لتحذف حقوق بذمتك🚶🏻 
      #CODS CREATED By ~ @JALAL_ALDON 
      please join to Channel Oscar Team @OSCARBOTv2 
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀ 
--]] 
do 

local function pre_process(msg) 
local jalal = msg['id'] 
    local oscar = 'mate:'..msg.to.id 
    if redis:get(oscar) and msg.fwd_from and not is_momod(msg) then 
            delete_msg(msg.id, ok_cb, true) 
           send_large_msg(get_receiver(msg), '#تنبيه ممنوع ❗ عمل اعادة التوجيه 🔒👥 \n\n#User @'..msg.from.username)
reply_msg(jalal, don, ok_cb, true) 
        end 

        return msg 
    end 

local function run(msg, matches) 
local jalal = msg['id'] 
    chat_id =  msg.to.id 
--by @JALAL_ALDON 
    if matches[1] == 'تحذير' and matches[2] == "اعادة التوجيه" and is_momod(msg) then 
                    local oscar = 'mate:'..msg.to.id 
                    redis:set(oscar, true) 
                    local jd = 'تم ✅ قفل اعادة التوجيه مع التحذير 🔒'
reply_msg(jalal, jd, ok_cb, true) 
elseif matches[1] == 'تحذير' and matches[2] == 'اعادة التوجيه' and not is_momod(msg) then 
local asdy = 'للمشرفين فقط' 
reply_msg(jalal, asdy, ok_cb, true) 

    elseif matches[1] == 'الغاء تحذير' and matches[2] == 'اعادة التوجيه' and is_momod(msg) then 
      local oscar = 'mate:'..msg.to.id 
      redis:del(oscar) 
    local don = 'تم ✅ الغاء قفل اعادة التوجيه مع التحذير 🔓 '
reply_msg(jalal, don, ok_cb, true) 
elseif matches[1] == 'الغاء تحذير' and matches[2] == 'اعادة التوجيه' and not is_momod(msg) then 
local jalal_aldon = 'للمشرفين فقط 👿'
reply_msg(jalal, jalal_aldon, ok_cb, true) 
end 
end 

return { 
    patterns = { 
        '^[!/#](تحذير) (.*)$', 
       '^[!/#](الغاء تحذير) (.*)$' 
    }, 
    run = run, 
    pre_process = pre_process 
} 

-- By @JALAL_ALDON 
end 
