.class public interface abstract Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader;
.super Ljava/lang/Object;
.source "MethodCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "ArgumentLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForJavaConstant;,
        Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForEnumerationValue;,
        Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForClassConstant;,
        Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForTextConstant;,
        Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForDoubleConstant;,
        Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForFloatConstant;,
        Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForLongConstant;,
        Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForIntegerConstant;,
        Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForCharacterConstant;,
        Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForShortConstant;,
        Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForByteConstant;,
        Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForBooleanConstant;,
        Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameterArray;,
        Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForField;,
        Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForInstance;,
        Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameter;,
        Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForInstrumentedType;,
        Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForThisReference;,
        Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForNullConstant;,
        Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$Factory;
    }
.end annotation


# virtual methods
.method public abstract resolve(Lnet/bytebuddy/description/method/ParameterDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
.end method
