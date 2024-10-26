.class public Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$ForValue$Inverted;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$ForValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Inverted"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$ForValue;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$ForValue;)V
    .locals 0

    .line 4254
    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$ForValue$Inverted;->this$0:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$ForValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getOuter()Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher;
    .locals 1

    .line 4271
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$ForValue$Inverted;->this$0:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$ForValue;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$Bound$SkipHandler;)V
    .locals 7

    .line 4262
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$ForValue$Inverted;->this$0:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$ForValue;

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$ForValue;->doApply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$Bound$SkipHandler;Z)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 4282
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 4283
    :cond_1
    check-cast p1, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$ForValue$Inverted;

    .line 4284
    invoke-direct {p1}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$ForValue$Inverted;->getOuter()Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher;

    move-result-object p1

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$ForValue$Inverted;->this$0:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$ForValue;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 4276
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$ForValue$Inverted;->this$0:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$ForValue;

    invoke-virtual {v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$ForValue;->hashCode()I

    move-result v0

    return v0
.end method
