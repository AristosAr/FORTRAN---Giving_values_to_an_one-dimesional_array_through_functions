program main
    implicit none

   real:: A(20), z,x
   integer:: i
   real:: f,g

    A=0 
    A=[(i, i=1,size(A),1)]   !Giving values to the array using implied do

    do i=1,size(A)
    print*, A(i)
    end do
    print*,

    do i=1,size(A)
        A(i)=g(i,x) !calling the g function 
        print*, A(i) !printing each element in every repetition of the loop
    end do

       do i=1,size(A)
        z=A(i)
        print*, f(z)   !while calling the external function, i calculate each element, and printing it at the same time
       end do

end program

real function f(z)   !takes the value z=A(i) and returns the result of the following equation f
real:: z
f=sqrt(z**2+10.)
end function

real function g(i,x)
real::x
integer:: i

x=0.5
g=x*10.*float(i)
end function
