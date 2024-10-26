.class public Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender;
.super Ljava/lang/Object;
.source "TypeProxy.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Appender"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender$AccessorMethodInvocation;
    }
.end annotation


# instance fields
.field private final fieldLoadingInstruction:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

.field final synthetic this$1:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender;->this$1:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;

    move-result-object p1

    const-string p2, "target"

    invoke-static {p2}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p2

    invoke-interface {p1, p2}, Lnet/bytebuddy/description/field/FieldList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/field/FieldList;

    invoke-interface {p1}, Lnet/bytebuddy/description/field/FieldList;->getOnly()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-static {p1}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->forField(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;->read()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender;->fieldLoadingInstruction:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    return-void
.end method

.method static synthetic access$600(Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 0

    .line 616
    iget-object p0, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender;->fieldLoadingInstruction:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    return-object p0
.end method

.method private getMethodCall()Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;
    .locals 1

    .line 647
    iget-object v0, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender;->this$1:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 3

    .line 634
    iget-object v0, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender;->this$1:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;

    iget-object v0, v0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;->this$0:Lnet/bytebuddy/implementation/auxiliary/TypeProxy;

    invoke-static {v0}, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->access$400(Lnet/bytebuddy/implementation/auxiliary/TypeProxy;)Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender;->this$1:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;

    iget-object v1, v1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;->this$0:Lnet/bytebuddy/implementation/auxiliary/TypeProxy;

    invoke-static {v1}, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->access$200(Lnet/bytebuddy/implementation/auxiliary/TypeProxy;)Lnet/bytebuddy/implementation/Implementation$Target;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender;->this$1:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;

    iget-object v2, v2, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;->this$0:Lnet/bytebuddy/implementation/auxiliary/TypeProxy;

    invoke-static {v2}, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->access$300(Lnet/bytebuddy/implementation/auxiliary/TypeProxy;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-interface {v0, v1, v2, p3}, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory;->invoke(Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    move-result-object v0

    .line 635
    invoke-interface {v0}, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender$AccessorMethodInvocation;

    invoke-direct {v1, p0, p3, v0}, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender$AccessorMethodInvocation;-><init>(Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$AbstractMethodErrorThrow;->INSTANCE:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$AbstractMethodErrorThrow;

    .line 637
    :goto_0
    invoke-interface {v1, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    .line 638
    new-instance p2, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getMaximalSize()I

    move-result p1

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result p3

    invoke-direct {p2, p1, p3}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;-><init>(II)V

    return-object p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 652
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender;->fieldLoadingInstruction:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    check-cast p1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender;

    iget-object v1, p1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender;->fieldLoadingInstruction:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 653
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender;->this$1:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;

    .line 654
    invoke-direct {p1}, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender;->getMethodCall()Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 659
    iget-object v0, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender;->this$1:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender;->fieldLoadingInstruction:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
