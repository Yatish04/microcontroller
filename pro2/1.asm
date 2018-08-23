mov a,#10h
mov b,#5h
cjne a,b,l1
l1:jc l2
mov 50h,a
l2:mov 50h,b
end