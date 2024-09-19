//
//  main.m
//  appBloques
//
//  Created by Luis Barranco on 09/09/24.
//

#import <Foundation/Foundation.h>

//double (^multiplyTwoValues)(double, double) =
//   ^(double firstValue, double secondValue) {
//      return firstValue * secondValue;
//   };

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        double (^multiplyTwoValues)(double, double) =
//           ^(double firstValue, double secondValue) {
//              return firstValue * secondValue;
//           };
        //double result = multiplyTwoValues(2,4);
        //NSLog(@"The result is %f", result);
        
        
        //Diseñe una bloque para determinar el mayor y el menoren un vector de 6 elementos
        
        int *(^mVector)(int *) = ^(int arr[6]){
            int res[2]={0,0};
            res[0]=arr[0];
            res[1]=arr[0];
            for(int i=1;i<6;i++){
                //NSLog(@"%d",arr[i]);
                if(arr[i]>res[0]){
                    res[0] = arr[i];
                }
                if(arr[i]<res[1]){
                    res[1] = arr[i];
                }
            }
//            NSLog(@"mayor del arreglo: %d",res[0]);
//            NSLog(@"menor del arreglo: %d",res[1]);
            return res;
        };
        
        int arr[6]={10,2,5,3,7,9};
        int *res= mVector(arr);
        int min = res[1];
        NSLog(@"mayor del arreglo: %d",res[0]);
        NSLog(@"menor del arreglo: %d",min);
        
        ///sol profe
        void (^mayorMenorEnVec)(int *, int *, int *)
        =^(int *v, int *menor, int *mayor){
            *menor = v[0];
            *mayor = v[0];
            for(int i=1;i<6;i++){
                if(menor[0]>v[i]){
                    menor[0] = v[i];
                }
                if(mayor[0]<v[i]){
                    mayor[0]=v[i];
                }
            }
        };

        int vec[6] = {90,30,10,60,91,70};
        int mayor,menor;
        mayorMenorEnVec(vec,&menor,&mayor);
        NSLog(@"mayor del arreglo: %d",mayor);
        NSLog(@"menor del arreglo: %d",menor);
    }
    return 0;
}
