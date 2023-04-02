program table
    implicit none

    integer :: i
    integer, dimension(29) :: age
    real*8, dimension(29) :: measles,mumps,rubella

    measles(:) = (/&
        0.207d0,0.301d0,0.409d0,0.589d0,0.757d0,0.669d0,0.797d0,0.818d0,0.866d0,0.859d0,&
        0.908d0,0.923d0,0.889d0,0.936d0,0.889d0,0.898d0,0.959d0,0.957d0,0.937d0,0.918d0,&
        0.939d0,0.967d0,0.973d0,0.943d0,0.967d0,0.946d0,0.961d0,0.968d0,0.968d0         &
    /)

    mumps(:) = (/&
        0.115d0,0.147d0,0.389d0,0.516d0,0.669d0,0.768d0,0.786d0,0.798d0,0.878d0,0.861d0,&
        0.844d0,0.881d0,0.895d0,0.882d0,0.869d0,0.895d0,0.911d0,0.920d0,0.915d0,0.950d0,&
        0.909d0,0.873d0,0.880d0,0.915d0,0.906d0,0.933d0,0.917d0,0.898d0,0.839d0         &
    /)
    
    rubella(:) = (/&
        0.126d0,0.171d0,0.184d0,0.286d0,0.400d0,0.503d0,0.524d0,0.634d0,0.742d0,0.664d0,&
        0.735d0,0.815d0,0.768d0,0.842d0,0.760d0,0.869d0,0.844d0,0.852d0,0.907d0,0.935d0,&
        0.921d0,0.896d0,0.890d0,0.949d0,0.899d0,0.955d0,0.937d0,0.933d0,0.917d0         &
    /)

    age(:) = (/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,17,19,21,23,25,27,29,31,33,35,40,45,55,65/)

    open(UNIT = 100, FILE = "output/latex_sero.txt", ACCESS = "SEQUENTIAL")

    ! do i = 1,14
    !     if (i .ne. 14) then
    !         write(100,110) age(i),'$\,-<$',age(i+1),'&',measles(i),'&',mumps(i),'&',rubella(i),'&',&
    !                     age(i+15),'$\,-<$',age(i+16),'&',measles(i+15),'&',mumps(i+15),'&',rubella(i+15),'\\'
    !         110 format (I2,A6,I2,1X,A1,1X,F5.3,1X,A1,1X,F5.3,1X,A1,1X,F5.3,1X,A1,1X,&
    !                     I2,A6,I2,1X,A1,1X,F5.3,1X,A1,1X,F5.3,1X,A1,1X,F5.3,1X,A2)
    !     else
    !         write(100,120) age(i),'$\,-<$',age(i+1),'&',measles(i),'&',mumps(i),'&',rubella(i),'&',&
    !                     age(29),'+','&',measles(29),'&',mumps(29),'&',rubella(29),'\\'
    !         120 format (I2,A6,I2,1X,A1,1X,F5.3,1X,A1,1X,F5.3,1X,A1,1X,F5.3,1X,A1,1X&
    !                     I2,A1,1X,A1,1X,F5.3,1X,A1,1X,F5.3,1X,A1,1X,F5.3,1X,A2)
    !     end if
    ! end do

    ! write(100,130) age(15),'$\,-<$',age(16),'&',measles(15),'&',mumps(15),'&',rubella(15),'&','&','&','\\'
    ! 130 format (I2,A6,I2,1X,A1,1X,F5.3,1X,A1,1X,F5.3,1X,A1,1X,F5.3,1X,A1,1X,A1,1X,A1,1X,A2)

    do i = 1,14
        if (i .ne. 14) then
            write(100,110) '$[',age(i),',',age(i+1),')$','&',measles(i),'&',mumps(i),'&',rubella(i),'&',&
                        '$[',age(i+15),',',age(i+16),')$','&',measles(i+15),'&',mumps(i+15),'&',rubella(i+15),'\\'
            110 format (A2,I2,A1,I2,A2,1X,A1,1X,F5.3,1X,A1,1X,F5.3,1X,A1,1X,F5.3,1X,A1,1X,&
                        A2,I2,A1,I2,A2,1X,A1,1X,F5.3,1X,A1,1X,F5.3,1X,A1,1X,F5.3,1X,A2)
        else
            write(100,120) '$[',age(i),',',age(i+1),')$','&',measles(i),'&',mumps(i),'&',rubella(i),'&',&
                        '$[',age(29),',+\infty)$','&',measles(29),'&',mumps(29),'&',rubella(29),'\\'
            120 format (A2,I2,A1,I2,A2,1X,A1,1X,F5.3,1X,A1,1X,F5.3,1X,A1,1X,F5.3,1X,A1,1X&
                        A2,I2,A10,1X,A1,1X,F5.3,1X,A1,1X,F5.3,1X,A1,1X,F5.3,1X,A2)
        end if
    end do

    write(100,130) '$[',age(15),',',age(16),')$','&',measles(15),'&',mumps(15),'&',rubella(15),'&','&','&','\\'
    130 format (A2,I2,A1,I2,A2,1X,A1,1X,F5.3,1X,A1,1X,F5.3,1X,A1,1X,F5.3,1X,A1,1X,A1,1X,A1,1X,A2)

end program
