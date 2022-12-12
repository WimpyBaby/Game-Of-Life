function antalMatris = antalgrannar(y)
[N,M]=size(y);

antalMatris = zeros(N,M);
  for r=2:N-1
        for c=2:M-1
    antalMatris(r,c)=sum(y(r-1:r+1,c-1:c+1),'all')-y(r,c);
        end
  end
 
end

      
