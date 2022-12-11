%global variabler
gen=1000;

%startmatrisen genererad slumpmässiga 1:or och 0:or i 50 x 50 matris
%start_matris = randi([0 1], 50);

%puffermatris
start_matris = A;

disp(start_matris)


[N,M]=size(start_matris);
y = zeros(N+2,M+2);
y(2:N+1,2:M+1)=start_matris;

%for loop som genererar nästa generation
for n = 1:gen
    antalgrannar(y);
    x = levnadsregler(antalgrannar(y),y);      
    y = x;
    spy(y,1,"b")
    xlabel(["generation", n])
    pause(0.1)
end
