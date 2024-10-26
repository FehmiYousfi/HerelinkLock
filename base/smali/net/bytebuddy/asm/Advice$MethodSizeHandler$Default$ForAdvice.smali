.class public Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ForAdvice"
.end annotation


# instance fields
.field private final adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private padding:I

.field private final requiredTypes:Lnet/bytebuddy/description/type/TypeList;

.field final synthetic this$0:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;

.field private final yieldedTypes:Lnet/bytebuddy/description/type/TypeList;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeList;Lnet/bytebuddy/description/type/TypeList;)V
    .locals 0

    .line 846
    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->this$0:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 847
    iput-object p2, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 848
    iput-object p3, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->requiredTypes:Lnet/bytebuddy/description/type/TypeList;

    .line 849
    iput-object p4, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->yieldedTypes:Lnet/bytebuddy/description/type/TypeList;

    .line 850
    invoke-static {p1}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->access$000(Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;)I

    move-result p3

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object p2

    invoke-virtual {p2}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result p2

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1, p2}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->access$002(Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;I)I

    return-void
.end method


# virtual methods
.method public recordMaxima(II)V
    .locals 2

    .line 865
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->this$0:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;

    invoke-static {v0}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->access$000(Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;)I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v1, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->padding:I

    add-int/2addr p1, v1

    invoke-static {v0, p1}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->access$002(Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;I)I

    .line 866
    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->this$0:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;

    invoke-static {p1}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->access$100(Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;)I

    move-result v0

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 867
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getStackSize()I

    move-result v1

    sub-int/2addr p2, v1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->this$0:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;

    .line 868
    invoke-static {v1}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->access$200(Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;)Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result v1

    add-int/2addr p2, v1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->requiredTypes:Lnet/bytebuddy/description/type/TypeList;

    .line 869
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeList;->getStackSize()I

    move-result v1

    add-int/2addr p2, v1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->yieldedTypes:Lnet/bytebuddy/description/type/TypeList;

    .line 870
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeList;->getStackSize()I

    move-result v1

    add-int/2addr p2, v1

    .line 866
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1, p2}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->access$102(Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;I)I

    return-void
.end method

.method public recordPadding(I)V
    .locals 1

    .line 875
    iget v0, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->padding:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->padding:I

    return-void
.end method

.method public requireLocalVariableLength(I)V
    .locals 1

    .line 855
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->this$0:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->requireLocalVariableLength(I)V

    return-void
.end method

.method public requireStackSize(I)V
    .locals 2

    .line 860
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->this$0:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;

    invoke-static {v0}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->access$000(Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;)I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->access$002(Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;I)I

    return-void
.end method
