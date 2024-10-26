.class public interface abstract Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context;
.super Ljava/lang/Object;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Context"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodEntry;
    }
.end annotation


# virtual methods
.method public abstract getPadding()I
.end method

.method public abstract isInitialized()Z
.end method
