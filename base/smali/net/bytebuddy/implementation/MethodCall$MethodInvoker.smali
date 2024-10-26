.class public interface abstract Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;
.super Ljava/lang/Object;
.source "MethodCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "MethodInvoker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForDefaultMethodInvocation;,
        Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation;,
        Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation;,
        Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForContextualInvocation;
    }
.end annotation


# virtual methods
.method public abstract invoke(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
.end method
