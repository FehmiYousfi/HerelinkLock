.class final enum Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$ForValue$1;
.super Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$ForValue;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$ForValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IIII)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 4092
    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$ForValue;-><init>(Ljava/lang/String;IIIILnet/bytebuddy/asm/Advice$1;)V

    return-void
.end method


# virtual methods
.method protected convertValue(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;)V
    .locals 0

    return-void
.end method
