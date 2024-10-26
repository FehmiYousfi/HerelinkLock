.class public interface abstract Lnet/bytebuddy/utility/JavaConstant;
.super Ljava/lang/Object;
.source "JavaConstant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/utility/JavaConstant$MethodHandle;,
        Lnet/bytebuddy/utility/JavaConstant$MethodType;
    }
.end annotation


# virtual methods
.method public abstract asConstantPoolValue()Ljava/lang/Object;
.end method

.method public abstract asStackManipulation()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
.end method

.method public abstract getType()Lnet/bytebuddy/description/type/TypeDescription;
.end method
