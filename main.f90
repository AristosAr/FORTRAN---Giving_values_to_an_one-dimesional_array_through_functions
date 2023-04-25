program main
    implicit none

   real:: A(20), z,x
   integer:: i
   real:: f,g

    A=0 !vazo arxika ola ta stixia ison me miden
    A=[(i, i=1,size(A),1)]   !dino times ston pinaka me iponooumeni epanalipsi

    do i=1,size(A)
    print*, A(i)
    end do
    print*,

    !gemizo me function anti opos parapano
    do i=1,size(A)
        A(i)=g(i,x)
    end do

       do i=1,size(A)
        z=A(i)
        print*, f(z)   ! kalo grafontas mia sinartisi kai
                       !ipologizo me eksoteriki diadikasia kai tipono taftoxrona
       end do

end program

real function f(z)   !tha perni mia timi apo ton pinaka kai tha dini mia timi f
real:: z
f=sqrt(z**2+10.)
end function

real function g(i,x)
real::x
integer:: i

x=0.5
g=x*10.*float(i)
end function

!FORTRAN - Giving_values_to_an_one-dimesion_array_through_function