// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

//
//
.assembly extern mscorlib
{ }
.assembly 'c'// as "c"
{ }
.module 'c.exe'
.namespace JitTest
{
  .class private auto ansi Test
         extends [mscorlib]System.Object
  {
    .method private hidebysig static int32 Main() il managed
    {
		.entrypoint
		.maxstack  30
		.locals (int32 V_0)
		ldc.i4.0
		stloc.0
	again:
		ldc.i4.1
		ldloc.0
		brtrue label_2
	
	again1:
		pop
		ldc.i4.1
		ldloc.0
		brtrue again1

		pop

		ldc.i4 100
		ret
	
	label_2:
		pop
		br again
    } // end of method 'Test::Main'

    .method public hidebysig specialname rtspecialname 
            instance void .ctor() il managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method 'Test::.ctor'
  } // end of class 'Test'
} // end of namespace 'JitTest'
