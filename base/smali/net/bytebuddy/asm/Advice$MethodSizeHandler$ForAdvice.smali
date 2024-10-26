.class public interface abstract Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$MethodSizeHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$MethodSizeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ForAdvice"
.end annotation


# virtual methods
.method public abstract recordMaxima(II)V
.end method

.method public abstract recordPadding(I)V
.end method

.method public abstract requireStackSize(I)V
.end method
