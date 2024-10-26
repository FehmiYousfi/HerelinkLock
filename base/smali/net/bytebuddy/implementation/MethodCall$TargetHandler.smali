.class public interface abstract Lnet/bytebuddy/implementation/MethodCall$TargetHandler;
.super Ljava/lang/Object;
.source "MethodCall.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "TargetHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodParameter;,
        Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForField;,
        Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForValue;,
        Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForConstructingInvocation;,
        Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation;
    }
.end annotation


# virtual methods
.method public abstract resolve(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
.end method
