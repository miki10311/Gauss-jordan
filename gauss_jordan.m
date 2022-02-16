function x = gauss_jordan(A,b)
    n=size(b,1);   %ilosc rownan w ukladzie(ilosc wierszy w wektorze b)
    x=zeros(n,1);  %tworzymy wektor x
    Ab=[A b];      %tworzymy macierz rozszerzoną
    for i=1:n      %idziemy po wierszach
        Ab(i,:)=Ab(i,:)./Ab(i,i); %kazdy wiersz od razu dzielimy przez element diagonalny, aby była tam jedynka
        for j=1:n  %idziemy po wierszach
           if i ~= j  %wykluczamy diagonale
               Ab(j,:)=Ab(j,:)-Ab(i,:)*Ab(j,i); % postać całkowicie zredukowana, aby miec od razu rozwiązania
           end 
        end
    end
    x=Ab(:,n+1); %bierzemy rozwiązania z n+1 kolumny
end