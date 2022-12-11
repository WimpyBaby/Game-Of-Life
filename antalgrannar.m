%Calcualtes number of neighboring cells in a 3x3 block around cell of given
%matrix A, in index A(r,c)


function antalMatris = antalgrannar(y)
[N,M]=size(y);

antalMatris = zeros(N,M);
  for r=2:N-1
        for c=2:M-1
    antalMatris(r,c)=sum(y(r-1:r+1,c-1:c+1),'all')-y(r,c); %the sum of the 3x3 block is equal to the number of living cells surrounding the checked cell
        end
  end
 
end

      
