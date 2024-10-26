.class public interface abstract Lnet/bytebuddy/asm/Advice$Dispatcher$Bound$ForMethodEnter;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ForMethodEnter"
.end annotation


# virtual methods
.method public abstract apply(Lnet/bytebuddy/asm/Advice$Dispatcher$Bound$SkipHandler;)V
.end method
