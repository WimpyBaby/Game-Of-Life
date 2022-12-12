function x = levnadsregler(antalMatris,y)
[N,M] = size(antalMatris);

 for r=2:N-1
        for c=2:M-1
  if(antalMatris(r,c)<2)
        antalMatris(r,c)=0;
    elseif(antalMatris(r,c)==3)
        antalMatris(r,c)=1;
    elseif(antalMatris(r,c)>3)
        antalMatris(r,c)=0;
  elseif(antalMatris(r,c)==2 && y(r,c)==0)
      antalMatris(r,c)=0;
 
 elseif(antalMatris(r,c)==2 && y(r,c)==1)
      antalMatris(r,c)=1;
 
  end
        end
 end
 x=antalMatris;
end

 
 
 



