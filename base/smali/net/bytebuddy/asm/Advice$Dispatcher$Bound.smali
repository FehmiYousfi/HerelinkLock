.class public interface abstract Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;
.super Ljava/lang/Object;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Bound"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$Dispatcher$Bound$ForMethodExit;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$Bound$ForMethodEnter;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$Bound$SkipHandler;
    }
.end annotation


# virtual methods
.method public abstract prepare()V
.end method
