
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.6.1055.0
//  Copyright (c) Microsoft Corporation.  All rights reserved.



// Metadata version: v4.0.30319
.assembly extern retargetable mscorlib
{
  .publickeytoken = (7C EC 85 D7 BE A7 79 8E )                         // |.....y.
  .ver 2:0:5:0
}
.assembly extern retargetable System.Core
{
  .publickeytoken = (7C EC 85 D7 BE A7 79 8E )                         // |.....y.
  .ver 2:0:5:0
}
.assembly PubSub
{
  .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.

  // --- The following custom attribute is added automatically, do not uncomment -------
  //  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 02 00 00 00 00 00 ) 

  .custom instance void [mscorlib]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 06 50 75 62 53 75 62 00 00 )                // ...PubSub..
  .custom instance void [mscorlib]System.Reflection.AssemblyDescriptionAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 06 50 75 62 53 75 62 00 00 )                // ...PubSub..
  .custom instance void [mscorlib]System.Reflection.AssemblyCopyrightAttribute::.ctor(string) = ( 01 00 12 43 6F 70 79 72 69 67 68 74 20 C2 A9 20   // ...Copyright .. 
                                                                                                  20 32 30 31 34 00 00 )                            //  2014..
  .custom instance void [mscorlib]System.Reflection.AssemblyTrademarkAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Resources.NeutralResourcesLanguageAttribute::.ctor(string) = ( 01 00 02 65 6E 00 00 )                            // ...en..
  .custom instance void [mscorlib]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 05 31 2E 35 2E 30 00 00 )                   // ...1.5.0..
  .custom instance void [mscorlib]System.Runtime.CompilerServices.InternalsVisibleToAttribute::.ctor(string) = ( 01 00 0C 50 75 62 53 75 62 2E 54 65 73 74 73 00   // ...PubSub.Tests.
                                                                                                                 00 ) 
  .custom instance void [mscorlib]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 2C 2E 4E 45 54 50 6F 72 74 61 62 6C 65 2C   // ..,.NETPortable,
                                                                                                        56 65 72 73 69 6F 6E 3D 76 34 2E 30 2C 50 72 6F   // Version=v4.0,Pro
                                                                                                        66 69 6C 65 3D 50 72 6F 66 69 6C 65 31 33 36 01   // file=Profile136.
                                                                                                        00 54 0E 14 46 72 61 6D 65 77 6F 72 6B 44 69 73   // .T..FrameworkDis
                                                                                                        70 6C 61 79 4E 61 6D 65 14 2E 4E 45 54 20 50 6F   // playName..NET Po
                                                                                                        72 74 61 62 6C 65 20 53 75 62 73 65 74 )          // rtable Subset
  .hash algorithm 0x00008004
  .ver 1:5:0:0
}
.module PubSub.dll
// MVID: {93C26881-7E41-4E0A-BAB9-DCF4C69293B0}
.imagebase 0x10000000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x02D80000


// =============== CLASS MEMBERS DECLARATION ===================

.class public auto ansi beforefieldinit PubSub.Hub
       extends [mscorlib]System.Object
{
  .class auto ansi nested assembly beforefieldinit Handler
         extends [mscorlib]System.Object
  {
    .field private class [mscorlib]System.Delegate '<Action>k__BackingField'
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field private class [mscorlib]System.WeakReference '<Sender>k__BackingField'
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field private class [mscorlib]System.Type '<Type>k__BackingField'
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .method public hidebysig specialname 
            instance class [mscorlib]System.Delegate 
            get_Action() cil managed
    {
      .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [mscorlib]System.Delegate PubSub.Hub/Handler::'<Action>k__BackingField'
      IL_0006:  ret
    } // end of method Handler::get_Action

    .method public hidebysig specialname 
            instance void  set_Action(class [mscorlib]System.Delegate 'value') cil managed
    {
      .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
      // Code size       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldarg.1
      IL_0002:  stfld      class [mscorlib]System.Delegate PubSub.Hub/Handler::'<Action>k__BackingField'
      IL_0007:  ret
    } // end of method Handler::set_Action

    .method public hidebysig specialname 
            instance class [mscorlib]System.WeakReference 
            get_Sender() cil managed
    {
      .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [mscorlib]System.WeakReference PubSub.Hub/Handler::'<Sender>k__BackingField'
      IL_0006:  ret
    } // end of method Handler::get_Sender

    .method public hidebysig specialname 
            instance void  set_Sender(class [mscorlib]System.WeakReference 'value') cil managed
    {
      .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
      // Code size       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldarg.1
      IL_0002:  stfld      class [mscorlib]System.WeakReference PubSub.Hub/Handler::'<Sender>k__BackingField'
      IL_0007:  ret
    } // end of method Handler::set_Sender

    .method public hidebysig specialname 
            instance class [mscorlib]System.Type 
            get_Type() cil managed
    {
      .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [mscorlib]System.Type PubSub.Hub/Handler::'<Type>k__BackingField'
      IL_0006:  ret
    } // end of method Handler::get_Type

    .method public hidebysig specialname 
            instance void  set_Type(class [mscorlib]System.Type 'value') cil managed
    {
      .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
      // Code size       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldarg.1
      IL_0002:  stfld      class [mscorlib]System.Type PubSub.Hub/Handler::'<Type>k__BackingField'
      IL_0007:  ret
    } // end of method Handler::set_Type

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method Handler::.ctor

    .property instance class [mscorlib]System.Delegate
            Action()
    {
      .get instance class [mscorlib]System.Delegate PubSub.Hub/Handler::get_Action()
      .set instance void PubSub.Hub/Handler::set_Action(class [mscorlib]System.Delegate)
    } // end of property Handler::Action
    .property instance class [mscorlib]System.WeakReference
            Sender()
    {
      .get instance class [mscorlib]System.WeakReference PubSub.Hub/Handler::get_Sender()
      .set instance void PubSub.Hub/Handler::set_Sender(class [mscorlib]System.WeakReference)
    } // end of property Handler::Sender
    .property instance class [mscorlib]System.Type
            Type()
    {
      .get instance class [mscorlib]System.Type PubSub.Hub/Handler::get_Type()
      .set instance void PubSub.Hub/Handler::set_Type(class [mscorlib]System.Type)
    } // end of property Handler::Type
  } // end of class Handler

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass8_0'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public object sender
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass8_0'::.ctor

    .method assembly hidebysig instance bool 
            '<Unsubscribe>b__0'(class PubSub.Hub/Handler a) cil managed
    {
      // Code size       38 (0x26)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance class [mscorlib]System.WeakReference PubSub.Hub/Handler::get_Sender()
      IL_0006:  callvirt   instance bool [mscorlib]System.WeakReference::get_IsAlive()
      IL_000b:  brfalse.s  IL_0024

      IL_000d:  ldarg.1
      IL_000e:  callvirt   instance class [mscorlib]System.WeakReference PubSub.Hub/Handler::get_Sender()
      IL_0013:  callvirt   instance object [mscorlib]System.WeakReference::get_Target()
      IL_0018:  ldarg.0
      IL_0019:  ldfld      object PubSub.Hub/'<>c__DisplayClass8_0'::sender
      IL_001e:  callvirt   instance bool [mscorlib]System.Object::Equals(object)
      IL_0023:  ret

      IL_0024:  ldc.i4.1
      IL_0025:  ret
    } // end of method '<>c__DisplayClass8_0'::'<Unsubscribe>b__0'

  } // end of class '<>c__DisplayClass8_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass11_0`1'<T>
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public object sender
    .field public class [mscorlib]System.Action`1<!T> 'handler'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass11_0`1'::.ctor

    .method assembly hidebysig instance bool 
            '<Unsubscribe>b__0'(class PubSub.Hub/Handler a) cil managed
    {
      // Code size       60 (0x3c)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance class [mscorlib]System.WeakReference PubSub.Hub/Handler::get_Sender()
      IL_0006:  callvirt   instance bool [mscorlib]System.WeakReference::get_IsAlive()
      IL_000b:  brfalse.s  IL_003a

      IL_000d:  ldarg.1
      IL_000e:  callvirt   instance class [mscorlib]System.WeakReference PubSub.Hub/Handler::get_Sender()
      IL_0013:  callvirt   instance object [mscorlib]System.WeakReference::get_Target()
      IL_0018:  ldarg.0
      IL_0019:  ldfld      object class PubSub.Hub/'<>c__DisplayClass11_0`1'<!T>::sender
      IL_001e:  callvirt   instance bool [mscorlib]System.Object::Equals(object)
      IL_0023:  brfalse.s  IL_0038

      IL_0025:  ldarg.1
      IL_0026:  callvirt   instance class [mscorlib]System.Type PubSub.Hub/Handler::get_Type()
      IL_002b:  ldtoken    !T
      IL_0030:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
      IL_0035:  ceq
      IL_0037:  ret

      IL_0038:  ldc.i4.0
      IL_0039:  ret

      IL_003a:  ldc.i4.1
      IL_003b:  ret
    } // end of method '<>c__DisplayClass11_0`1'::'<Unsubscribe>b__0'

    .method assembly hidebysig instance bool 
            '<Unsubscribe>b__1'(class PubSub.Hub/Handler a) cil managed
    {
      // Code size       18 (0x12)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance class [mscorlib]System.Delegate PubSub.Hub/Handler::get_Action()
      IL_0006:  ldarg.0
      IL_0007:  ldfld      class [mscorlib]System.Action`1<!0> class PubSub.Hub/'<>c__DisplayClass11_0`1'<!T>::'handler'
      IL_000c:  callvirt   instance bool [mscorlib]System.Object::Equals(object)
      IL_0011:  ret
    } // end of method '<>c__DisplayClass11_0`1'::'<Unsubscribe>b__1'

  } // end of class '<>c__DisplayClass11_0`1'

  .field assembly object locker
  .field assembly class [mscorlib]System.Collections.Generic.List`1<class PubSub.Hub/Handler> handlers
  .method public hidebysig instance void 
          Publish<T>([opt] !!T data) cil managed
  {
    .param [1] = nullref
    // Code size       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  call       instance void PubSub.Hub::Publish<!!0>(object,
                                                                !!0)
    IL_0008:  ret
  } // end of method Hub::Publish

  .method public hidebysig instance void 
          Publish<T>(object sender,
                     [opt] !!T data) cil managed
  {
    .param [2] = nullref
    // Code size       283 (0x11b)
    .maxstack  2
    .locals init (class [mscorlib]System.Collections.Generic.List`1<class PubSub.Hub/Handler> V_0,
             class [mscorlib]System.Collections.Generic.List`1<class PubSub.Hub/Handler> V_1,
             object V_2,
             bool V_3,
             valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class PubSub.Hub/Handler> V_4,
             class PubSub.Hub/Handler V_5,
             class PubSub.Hub/Handler V_6)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class PubSub.Hub/Handler> PubSub.Hub::handlers
    IL_0006:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<class PubSub.Hub/Handler>::get_Count()
    IL_000b:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class PubSub.Hub/Handler>::.ctor(int32)
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class PubSub.Hub/Handler> PubSub.Hub::handlers
    IL_0017:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<class PubSub.Hub/Handler>::get_Count()
    IL_001c:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class PubSub.Hub/Handler>::.ctor(int32)
    IL_0021:  stloc.1
    IL_0022:  ldarg.0
    IL_0023:  ldfld      object PubSub.Hub::locker
    IL_0028:  stloc.2
    IL_0029:  ldc.i4.0
    IL_002a:  stloc.3
    .try
    {
      IL_002b:  ldloc.2
      IL_002c:  ldloca.s   V_3
      IL_002e:  call       void [mscorlib]System.Threading.Monitor::Enter(object,
                                                                          bool&)
      IL_0033:  ldarg.0
      IL_0034:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class PubSub.Hub/Handler> PubSub.Hub::handlers
      IL_0039:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class PubSub.Hub/Handler>::GetEnumerator()
      IL_003e:  stloc.s    V_4
      .try
      {
        IL_0040:  br.s       IL_0083

        IL_0042:  ldloca.s   V_4
        IL_0044:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class PubSub.Hub/Handler>::get_Current()
        IL_0049:  stloc.s    V_5
        IL_004b:  ldloc.s    V_5
        IL_004d:  callvirt   instance class [mscorlib]System.WeakReference PubSub.Hub/Handler::get_Sender()
        IL_0052:  callvirt   instance bool [mscorlib]System.WeakReference::get_IsAlive()
        IL_0057:  brtrue.s   IL_0063

        IL_0059:  ldloc.1
        IL_005a:  ldloc.s    V_5
        IL_005c:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class PubSub.Hub/Handler>::Add(!0)
        IL_0061:  br.s       IL_0083

        IL_0063:  ldloc.s    V_5
        IL_0065:  callvirt   instance class [mscorlib]System.Type PubSub.Hub/Handler::get_Type()
        IL_006a:  ldtoken    !!T
        IL_006f:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
        IL_0074:  callvirt   instance bool [mscorlib]System.Type::IsAssignableFrom(class [mscorlib]System.Type)
        IL_0079:  brfalse.s  IL_0083

        IL_007b:  ldloc.0
        IL_007c:  ldloc.s    V_5
        IL_007e:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class PubSub.Hub/Handler>::Add(!0)
        IL_0083:  ldloca.s   V_4
        IL_0085:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class PubSub.Hub/Handler>::MoveNext()
        IL_008a:  brtrue.s   IL_0042

        IL_008c:  leave.s    IL_009c

      }  // end .try
      finally
      {
        IL_008e:  ldloca.s   V_4
        IL_0090:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class PubSub.Hub/Handler>
        IL_0096:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
        IL_009b:  endfinally
      }  // end handler
      IL_009c:  ldloc.1
      IL_009d:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class PubSub.Hub/Handler>::GetEnumerator()
      IL_00a2:  stloc.s    V_4
      .try
      {
        IL_00a4:  br.s       IL_00bd

        IL_00a6:  ldloca.s   V_4
        IL_00a8:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class PubSub.Hub/Handler>::get_Current()
        IL_00ad:  stloc.s    V_6
        IL_00af:  ldarg.0
        IL_00b0:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class PubSub.Hub/Handler> PubSub.Hub::handlers
        IL_00b5:  ldloc.s    V_6
        IL_00b7:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<class PubSub.Hub/Handler>::Remove(!0)
        IL_00bc:  pop
        IL_00bd:  ldloca.s   V_4
        IL_00bf:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class PubSub.Hub/Handler>::MoveNext()
        IL_00c4:  brtrue.s   IL_00a6

        IL_00c6:  leave.s    IL_00e0

      }  // end .try
      finally
      {
        IL_00c8:  ldloca.s   V_4
        IL_00ca:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class PubSub.Hub/Handler>
        IL_00d0:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
        IL_00d5:  endfinally
      }  // end handler
    }  // end .try
    finally
    {
      IL_00d6:  ldloc.3
      IL_00d7:  brfalse.s  IL_00df

      IL_00d9:  ldloc.2
      IL_00da:  call       void [mscorlib]System.Threading.Monitor::Exit(object)
      IL_00df:  endfinally
    }  // end handler
    IL_00e0:  ldloc.0
    IL_00e1:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class PubSub.Hub/Handler>::GetEnumerator()
    IL_00e6:  stloc.s    V_4
    .try
    {
      IL_00e8:  br.s       IL_0101

      IL_00ea:  ldloca.s   V_4
      IL_00ec:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class PubSub.Hub/Handler>::get_Current()
      IL_00f1:  callvirt   instance class [mscorlib]System.Delegate PubSub.Hub/Handler::get_Action()
      IL_00f6:  castclass  class [mscorlib]System.Action`1<!!T>
      IL_00fb:  ldarg.2
      IL_00fc:  callvirt   instance void class [mscorlib]System.Action`1<!!T>::Invoke(!0)
      IL_0101:  ldloca.s   V_4
      IL_0103:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class PubSub.Hub/Handler>::MoveNext()
      IL_0108:  brtrue.s   IL_00ea

      IL_010a:  leave.s    IL_011a

    }  // end .try
    finally
    {
      IL_010c:  ldloca.s   V_4
      IL_010e:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class PubSub.Hub/Handler>
      IL_0114:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0119:  endfinally
    }  // end handler
    IL_011a:  ret
  } // end of method Hub::Publish

  .method public hidebysig instance void 
          Subscribe<T>(class [mscorlib]System.Action`1<!!T> 'handler') cil managed
  {
    // Code size       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  call       instance void PubSub.Hub::Subscribe<!!0>(object,
                                                                  class [mscorlib]System.Action`1<!!0>)
    IL_0008:  ret
  } // end of method Hub::Subscribe

  .method public hidebysig instance void 
          Subscribe<T>(object sender,
                       class [mscorlib]System.Action`1<!!T> 'handler') cil managed
  {
    // Code size       83 (0x53)
    .maxstack  3
    .locals init (class PubSub.Hub/Handler V_0,
             object V_1,
             bool V_2)
    IL_0000:  newobj     instance void PubSub.Hub/Handler::.ctor()
    IL_0005:  dup
    IL_0006:  ldarg.2
    IL_0007:  callvirt   instance void PubSub.Hub/Handler::set_Action(class [mscorlib]System.Delegate)
    IL_000c:  dup
    IL_000d:  ldarg.1
    IL_000e:  newobj     instance void [mscorlib]System.WeakReference::.ctor(object)
    IL_0013:  callvirt   instance void PubSub.Hub/Handler::set_Sender(class [mscorlib]System.WeakReference)
    IL_0018:  dup
    IL_0019:  ldtoken    !!T
    IL_001e:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_0023:  callvirt   instance void PubSub.Hub/Handler::set_Type(class [mscorlib]System.Type)
    IL_0028:  stloc.0
    IL_0029:  ldarg.0
    IL_002a:  ldfld      object PubSub.Hub::locker
    IL_002f:  stloc.1
    IL_0030:  ldc.i4.0
    IL_0031:  stloc.2
    .try
    {
      IL_0032:  ldloc.1
      IL_0033:  ldloca.s   V_2
      IL_0035:  call       void [mscorlib]System.Threading.Monitor::Enter(object,
                                                                          bool&)
      IL_003a:  ldarg.0
      IL_003b:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class PubSub.Hub/Handler> PubSub.Hub::handlers
      IL_0040:  ldloc.0
      IL_0041:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class PubSub.Hub/Handler>::Add(!0)
      IL_0046:  leave.s    IL_0052

    }  // end .try
    finally
    {
      IL_0048:  ldloc.2
      IL_0049:  brfalse.s  IL_0051

      IL_004b:  ldloc.1
      IL_004c:  call       void [mscorlib]System.Threading.Monitor::Exit(object)
      IL_0051:  endfinally
    }  // end handler
    IL_0052:  ret
  } // end of method Hub::Subscribe

  .method public hidebysig instance void 
          Unsubscribe() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance void PubSub.Hub::Unsubscribe(object)
    IL_0007:  ret
  } // end of method Hub::Unsubscribe

  .method public hidebysig instance void 
          Unsubscribe(object sender) cil managed
  {
    // Code size       125 (0x7d)
    .maxstack  3
    .locals init (class PubSub.Hub/'<>c__DisplayClass8_0' V_0,
             object V_1,
             bool V_2,
             valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class PubSub.Hub/Handler> V_3,
             class PubSub.Hub/Handler V_4)
    IL_0000:  newobj     instance void PubSub.Hub/'<>c__DisplayClass8_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      object PubSub.Hub/'<>c__DisplayClass8_0'::sender
    IL_000d:  ldarg.0
    IL_000e:  ldfld      object PubSub.Hub::locker
    IL_0013:  stloc.1
    IL_0014:  ldc.i4.0
    IL_0015:  stloc.2
    .try
    {
      IL_0016:  ldloc.1
      IL_0017:  ldloca.s   V_2
      IL_0019:  call       void [mscorlib]System.Threading.Monitor::Enter(object,
                                                                          bool&)
      IL_001e:  ldarg.0
      IL_001f:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class PubSub.Hub/Handler> PubSub.Hub::handlers
      IL_0024:  ldloc.0
      IL_0025:  ldftn      instance bool PubSub.Hub/'<>c__DisplayClass8_0'::'<Unsubscribe>b__0'(class PubSub.Hub/Handler)
      IL_002b:  newobj     instance void class [mscorlib]System.Func`2<class PubSub.Hub/Handler,bool>::.ctor(object,
                                                                                                             native int)
      IL_0030:  call       class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> [System.Core]System.Linq.Enumerable::Where<class PubSub.Hub/Handler>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                              class [mscorlib]System.Func`2<!!0,bool>)
      IL_0035:  call       class [mscorlib]System.Collections.Generic.List`1<!!0> [System.Core]System.Linq.Enumerable::ToList<class PubSub.Hub/Handler>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
      IL_003a:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class PubSub.Hub/Handler>::GetEnumerator()
      IL_003f:  stloc.3
      .try
      {
        IL_0040:  br.s       IL_0059

        IL_0042:  ldloca.s   V_3
        IL_0044:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class PubSub.Hub/Handler>::get_Current()
        IL_0049:  stloc.s    V_4
        IL_004b:  ldarg.0
        IL_004c:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class PubSub.Hub/Handler> PubSub.Hub::handlers
        IL_0051:  ldloc.s    V_4
        IL_0053:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<class PubSub.Hub/Handler>::Remove(!0)
        IL_0058:  pop
        IL_0059:  ldloca.s   V_3
        IL_005b:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class PubSub.Hub/Handler>::MoveNext()
        IL_0060:  brtrue.s   IL_0042

        IL_0062:  leave.s    IL_007c

      }  // end .try
      finally
      {
        IL_0064:  ldloca.s   V_3
        IL_0066:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class PubSub.Hub/Handler>
        IL_006c:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
        IL_0071:  endfinally
      }  // end handler
    }  // end .try
    finally
    {
      IL_0072:  ldloc.2
      IL_0073:  brfalse.s  IL_007b

      IL_0075:  ldloc.1
      IL_0076:  call       void [mscorlib]System.Threading.Monitor::Exit(object)
      IL_007b:  endfinally
    }  // end handler
    IL_007c:  ret
  } // end of method Hub::Unsubscribe

  .method public hidebysig instance void 
          Unsubscribe<T>() cil managed
  {
    // Code size       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldnull
    IL_0003:  call       instance void PubSub.Hub::Unsubscribe<!!0>(object,
                                                                    class [mscorlib]System.Action`1<!!0>)
    IL_0008:  ret
  } // end of method Hub::Unsubscribe

  .method public hidebysig instance void 
          Unsubscribe<T>([opt] class [mscorlib]System.Action`1<!!T> 'handler') cil managed
  {
    .param [1] = nullref
    // Code size       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  call       instance void PubSub.Hub::Unsubscribe<!!0>(object,
                                                                    class [mscorlib]System.Action`1<!!0>)
    IL_0008:  ret
  } // end of method Hub::Unsubscribe

  .method public hidebysig instance void 
          Unsubscribe<T>(object sender,
                         [opt] class [mscorlib]System.Action`1<!!T> 'handler') cil managed
  {
    .param [2] = nullref
    // Code size       162 (0xa2)
    .maxstack  3
    .locals init (class PubSub.Hub/'<>c__DisplayClass11_0`1'<!!T> V_0,
             object V_1,
             bool V_2,
             class [mscorlib]System.Collections.Generic.IEnumerable`1<class PubSub.Hub/Handler> V_3,
             valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class PubSub.Hub/Handler> V_4,
             class PubSub.Hub/Handler V_5)
    IL_0000:  newobj     instance void class PubSub.Hub/'<>c__DisplayClass11_0`1'<!!T>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      object class PubSub.Hub/'<>c__DisplayClass11_0`1'<!!T>::sender
    IL_000d:  ldloc.0
    IL_000e:  ldarg.2
    IL_000f:  stfld      class [mscorlib]System.Action`1<!0> class PubSub.Hub/'<>c__DisplayClass11_0`1'<!!T>::'handler'
    IL_0014:  ldarg.0
    IL_0015:  ldfld      object PubSub.Hub::locker
    IL_001a:  stloc.1
    IL_001b:  ldc.i4.0
    IL_001c:  stloc.2
    .try
    {
      IL_001d:  ldloc.1
      IL_001e:  ldloca.s   V_2
      IL_0020:  call       void [mscorlib]System.Threading.Monitor::Enter(object,
                                                                          bool&)
      IL_0025:  ldarg.0
      IL_0026:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class PubSub.Hub/Handler> PubSub.Hub::handlers
      IL_002b:  ldloc.0
      IL_002c:  ldftn      instance bool class PubSub.Hub/'<>c__DisplayClass11_0`1'<!!T>::'<Unsubscribe>b__0'(class PubSub.Hub/Handler)
      IL_0032:  newobj     instance void class [mscorlib]System.Func`2<class PubSub.Hub/Handler,bool>::.ctor(object,
                                                                                                             native int)
      IL_0037:  call       class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> [System.Core]System.Linq.Enumerable::Where<class PubSub.Hub/Handler>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                              class [mscorlib]System.Func`2<!!0,bool>)
      IL_003c:  stloc.3
      IL_003d:  ldloc.0
      IL_003e:  ldfld      class [mscorlib]System.Action`1<!0> class PubSub.Hub/'<>c__DisplayClass11_0`1'<!!T>::'handler'
      IL_0043:  brfalse.s  IL_0058

      IL_0045:  ldloc.3
      IL_0046:  ldloc.0
      IL_0047:  ldftn      instance bool class PubSub.Hub/'<>c__DisplayClass11_0`1'<!!T>::'<Unsubscribe>b__1'(class PubSub.Hub/Handler)
      IL_004d:  newobj     instance void class [mscorlib]System.Func`2<class PubSub.Hub/Handler,bool>::.ctor(object,
                                                                                                             native int)
      IL_0052:  call       class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> [System.Core]System.Linq.Enumerable::Where<class PubSub.Hub/Handler>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                              class [mscorlib]System.Func`2<!!0,bool>)
      IL_0057:  stloc.3
      IL_0058:  ldloc.3
      IL_0059:  call       class [mscorlib]System.Collections.Generic.List`1<!!0> [System.Core]System.Linq.Enumerable::ToList<class PubSub.Hub/Handler>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
      IL_005e:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class PubSub.Hub/Handler>::GetEnumerator()
      IL_0063:  stloc.s    V_4
      .try
      {
        IL_0065:  br.s       IL_007e

        IL_0067:  ldloca.s   V_4
        IL_0069:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class PubSub.Hub/Handler>::get_Current()
        IL_006e:  stloc.s    V_5
        IL_0070:  ldarg.0
        IL_0071:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class PubSub.Hub/Handler> PubSub.Hub::handlers
        IL_0076:  ldloc.s    V_5
        IL_0078:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<class PubSub.Hub/Handler>::Remove(!0)
        IL_007d:  pop
        IL_007e:  ldloca.s   V_4
        IL_0080:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class PubSub.Hub/Handler>::MoveNext()
        IL_0085:  brtrue.s   IL_0067

        IL_0087:  leave.s    IL_00a1

      }  // end .try
      finally
      {
        IL_0089:  ldloca.s   V_4
        IL_008b:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class PubSub.Hub/Handler>
        IL_0091:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
        IL_0096:  endfinally
      }  // end handler
    }  // end .try
    finally
    {
      IL_0097:  ldloc.2
      IL_0098:  brfalse.s  IL_00a0

      IL_009a:  ldloc.1
      IL_009b:  call       void [mscorlib]System.Threading.Monitor::Exit(object)
      IL_00a0:  endfinally
    }  // end handler
    IL_00a1:  ret
  } // end of method Hub::Unsubscribe

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void [mscorlib]System.Object::.ctor()
    IL_0006:  stfld      object PubSub.Hub::locker
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class PubSub.Hub/Handler>::.ctor()
    IL_0011:  stfld      class [mscorlib]System.Collections.Generic.List`1<class PubSub.Hub/Handler> PubSub.Hub::handlers
    IL_0016:  ldarg.0
    IL_0017:  call       instance void [mscorlib]System.Object::.ctor()
    IL_001c:  ret
  } // end of method Hub::.ctor

} // end of class PubSub.Hub

.class public abstract auto ansi sealed beforefieldinit PubSub.PubSubExtensions
       extends [mscorlib]System.Object
{
  .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static initonly class PubSub.Hub hub
  .method public hidebysig static bool  Exists<T>(object obj) cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       96 (0x60)
    .maxstack  2
    .locals init (valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class PubSub.Hub/Handler> V_0,
             class PubSub.Hub/Handler V_1,
             bool V_2)
    IL_0000:  ldsfld     class PubSub.Hub PubSub.PubSubExtensions::hub
    IL_0005:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class PubSub.Hub/Handler> PubSub.Hub::handlers
    IL_000a:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class PubSub.Hub/Handler>::GetEnumerator()
    IL_000f:  stloc.0
    .try
    {
      IL_0010:  br.s       IL_0043

      IL_0012:  ldloca.s   V_0
      IL_0014:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class PubSub.Hub/Handler>::get_Current()
      IL_0019:  stloc.1
      IL_001a:  ldloc.1
      IL_001b:  callvirt   instance class [mscorlib]System.WeakReference PubSub.Hub/Handler::get_Sender()
      IL_0020:  callvirt   instance object [mscorlib]System.WeakReference::get_Target()
      IL_0025:  ldarg.0
      IL_0026:  call       bool [mscorlib]System.Object::Equals(object,
                                                                object)
      IL_002b:  brfalse.s  IL_0043

      IL_002d:  ldtoken    !!T
      IL_0032:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
      IL_0037:  ldloc.1
      IL_0038:  callvirt   instance class [mscorlib]System.Type PubSub.Hub/Handler::get_Type()
      IL_003d:  bne.un.s   IL_0043

      IL_003f:  ldc.i4.1
      IL_0040:  stloc.2
      IL_0041:  leave.s    IL_005e

      IL_0043:  ldloca.s   V_0
      IL_0045:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class PubSub.Hub/Handler>::MoveNext()
      IL_004a:  brtrue.s   IL_0012

      IL_004c:  leave.s    IL_005c

    }  // end .try
    finally
    {
      IL_004e:  ldloca.s   V_0
      IL_0050:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class PubSub.Hub/Handler>
      IL_0056:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_005b:  endfinally
    }  // end handler
    IL_005c:  ldc.i4.0
    IL_005d:  ret

    IL_005e:  ldloc.2
    IL_005f:  ret
  } // end of method PubSubExtensions::Exists

  .method public hidebysig static void  Publish<T>(object obj) cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       21 (0x15)
    .maxstack  3
    .locals init (!!T V_0)
    IL_0000:  ldsfld     class PubSub.Hub PubSub.PubSubExtensions::hub
    IL_0005:  ldarg.0
    IL_0006:  ldloca.s   V_0
    IL_0008:  initobj    !!T
    IL_000e:  ldloc.0
    IL_000f:  callvirt   instance void PubSub.Hub::Publish<!!0>(object,
                                                                !!0)
    IL_0014:  ret
  } // end of method PubSubExtensions::Publish

  .method public hidebysig static void  Publish<T>(object obj,
                                                   !!T data) cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldsfld     class PubSub.Hub PubSub.PubSubExtensions::hub
    IL_0005:  ldarg.0
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void PubSub.Hub::Publish<!!0>(object,
                                                                !!0)
    IL_000c:  ret
  } // end of method PubSubExtensions::Publish

  .method public hidebysig static void  Subscribe<T>(object obj,
                                                     class [mscorlib]System.Action`1<!!T> 'handler') cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldsfld     class PubSub.Hub PubSub.PubSubExtensions::hub
    IL_0005:  ldarg.0
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void PubSub.Hub::Subscribe<!!0>(object,
                                                                  class [mscorlib]System.Action`1<!!0>)
    IL_000c:  ret
  } // end of method PubSubExtensions::Subscribe

  .method public hidebysig static void  Unsubscribe(object obj) cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       12 (0xc)
    .maxstack  8
    IL_0000:  ldsfld     class PubSub.Hub PubSub.PubSubExtensions::hub
    IL_0005:  ldarg.0
    IL_0006:  callvirt   instance void PubSub.Hub::Unsubscribe(object)
    IL_000b:  ret
  } // end of method PubSubExtensions::Unsubscribe

  .method public hidebysig static void  Unsubscribe<T>(object obj) cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldsfld     class PubSub.Hub PubSub.PubSubExtensions::hub
    IL_0005:  ldarg.0
    IL_0006:  ldnull
    IL_0007:  callvirt   instance void PubSub.Hub::Unsubscribe<!!0>(object,
                                                                    class [mscorlib]System.Action`1<!!0>)
    IL_000c:  ret
  } // end of method PubSubExtensions::Unsubscribe

  .method public hidebysig static void  Unsubscribe<T>(object obj,
                                                       class [mscorlib]System.Action`1<!!T> 'handler') cil managed
  {
    .custom instance void [System.Core]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldsfld     class PubSub.Hub PubSub.PubSubExtensions::hub
    IL_0005:  ldarg.0
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void PubSub.Hub::Unsubscribe<!!0>(object,
                                                                    class [mscorlib]System.Action`1<!!0>)
    IL_000c:  ret
  } // end of method PubSubExtensions::Unsubscribe

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // Code size       11 (0xb)
    .maxstack  8
    IL_0000:  newobj     instance void PubSub.Hub::.ctor()
    IL_0005:  stsfld     class PubSub.Hub PubSub.PubSubExtensions::hub
    IL_000a:  ret
  } // end of method PubSubExtensions::.cctor

} // end of class PubSub.PubSubExtensions


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
// WARNING: Created Win32 resource file PubSub.res
