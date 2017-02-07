def merge_sort(arr)
#perhaps the base case is that the array cannot be divided further
return arr if arr.length==1
#otherwise split and task others to merge
#even
split_pos=arr.length/2
arr1=merge_sort(arr[0,split_pos])
arr2=merge_sort(arr[split_pos,arr.length])

return merge(arr1,arr2)

end

def merge(arr,arr2)
 new_arr=[]
 while(arr.length>0 && arr2.length>0)
 	if arr[0]<arr2[0]
       #eliminate first item AND hold on to it
 	   new_arr << arr.shift
 	elsif arr[0]>arr2[0]
 		new_arr << arr2.shift
 	else#both items are the same
        new_arr << arr.shift
        new_arr << arr2.shift
 	end
 end
 if arr.length>0
 	b=arr
 elsif arr2.length>0
 	b=arr2
 end
 while(b.length>0)
 	new_arr << b.shift
 end

 return new_arr
 
end