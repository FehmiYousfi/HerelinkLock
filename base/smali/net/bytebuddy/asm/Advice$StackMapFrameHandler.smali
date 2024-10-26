.class public interface abstract Lnet/bytebuddy/asm/Advice$StackMapFrameHandler;
.super Ljava/lang/Object;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "StackMapFrameHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;,
        Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$NoOp;,
        Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;,
        Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;
    }
.end annotation


# virtual methods
.method public abstract injectCompletionFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;Z)V
.end method

.method public abstract injectExceptionFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
.end method

.method public abstract injectReturnFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
.end method

.method public abstract translateFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;II[Ljava/lang/Object;I[Ljava/lang/Object;)V
.end method
