// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly b26323 { }
.namespace Test
{
  .class auto ansi App extends [mscorlib]System.Object
  {
    .field public int32 m_nField
    .method public specialname rtspecialname instance vararg void .ctor() il managed
    {
		.maxstack  8
		ldarg.0
		call       instance void [mscorlib]System.Object::.ctor()
		ldarg.0
		ldc.i4     5
		stfld      int32 Test.App::m_nField
		ldstr      "In constructor."
		call       void [mscorlib]System.Console::WriteLine(class System.String)
		ret
    }

    .method private static int32 Main() il managed
    {
      .entrypoint
      .maxstack  2
      .locals ([0] class Test.App app)
      IL_0001:  newobj     instance vararg void Test.App::.ctor(...)
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  ldfld      int32 Test.App::m_nField
      IL_000d:  ldc.i4.5
      IL_000e:  beq.s      IL_001c

      IL_0010:  ldstr      "**** TEST FAILED ****"
      IL_0015:  call       void [mscorlib]System.Console::WriteLine(class System.String)
      
      IL_001a:  ldc.i4.1
      IL_001b:  ret

      IL_001c:  ldstr      "**** TEST PASSED ****"
      IL_0021:  call       void [mscorlib]System.Console::WriteLine(class System.String)
      IL_0026:  ldc.i4 100
      IL_0027:  ret
    }
  }
}

