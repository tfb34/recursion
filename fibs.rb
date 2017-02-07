def fibs(n)
 arr=[0,1]
 x=0
 y=1
 n=n-2
 sum = arr[x] + arr[y]
  
 while n>=0
 	arr << sum
 	x+=1
 	y+=1
   sum = arr[x] + arr[y]
    n-=1
end
 return arr
end


def fibs_rec(n)
 return 0 if n==0
 return 1 if n==1
 fibs_rec(n-1)+fibs_rec(n-2)


end
#fibs(10)