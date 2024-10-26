.class Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall$Appender;
.super Ljava/lang/Object;
.source "Pipe.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Appender"
.end annotation


# instance fields
.field private final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

.field final synthetic this$0:Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;


# direct methods
.method private constructor <init>(Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall$Appender;->this$0:Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    iput-object p2, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall$Appender;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    return-void
.end method

.method synthetic constructor <init>(Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/bind/annotation/Pipe$1;)V
    .locals 0

    .line 442
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall$Appender;-><init>(Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-void
.end method

.method private getMethodCall()Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;
    .locals 1

    .line 486
    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall$Appender;->this$0:Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 10

    .line 462
    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall$Appender;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadFrom(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    .line 463
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall$Appender;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;

    move-result-object v2

    .line 464
    invoke-interface {v2}, Lnet/bytebuddy/description/field/FieldList;->size()I

    move-result v3

    new-array v3, v3, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 466
    invoke-interface {v2}, Lnet/bytebuddy/description/field/FieldList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/bytebuddy/description/field/FieldDescription;

    add-int/lit8 v8, v4, 0x1

    .line 467
    new-instance v9, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    new-array v6, v6, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    aput-object v0, v6, v1

    invoke-static {v5}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->forField(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

    move-result-object v5

    invoke-interface {v5}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;->read()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v5

    aput-object v5, v6, v7

    invoke-direct {v9, v6}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    aput-object v9, v3, v4

    move v4, v8

    goto :goto_0

    .line 469
    :cond_0
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v2, 0x6

    new-array v2, v2, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    sget-object v4, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->REFERENCE:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    .line 470
    invoke-virtual {v4, v7}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadFrom(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v4

    aput-object v4, v2, v1

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall$Appender;->this$0:Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;

    .line 471
    invoke-static {v1}, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;->access$500(Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;)Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    move-result-object v1

    sget-object v4, Lnet/bytebuddy/description/type/TypeDescription$Generic;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v5, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall$Appender;->this$0:Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;

    invoke-static {v5}, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;->access$400(Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;)Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v5

    invoke-interface {v5}, Lnet/bytebuddy/description/method/MethodDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v5

    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v5

    sget-object v8, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->DYNAMIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-interface {v1, v4, v5, v8}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v1

    aput-object v1, v2, v7

    new-instance v1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    invoke-direct {v1, v3}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    aput-object v1, v2, v6

    const/4 v1, 0x3

    iget-object v3, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall$Appender;->this$0:Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;

    .line 473
    invoke-static {v3}, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;->access$400(Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;)Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v3

    invoke-static {v3}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x4

    iget-object v3, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall$Appender;->this$0:Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;

    .line 474
    invoke-static {v3}, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;->access$500(Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;)Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    move-result-object v3

    iget-object v4, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall$Appender;->this$0:Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;

    invoke-static {v4}, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;->access$400(Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;)Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v4

    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v4

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v5

    sget-object v6, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->DYNAMIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-interface {v3, v4, v5, v6}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x5

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;->REFERENCE:Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    .line 476
    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    .line 477
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

    .line 491
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall$Appender;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    check-cast p1, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall$Appender;

    iget-object v1, p1, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall$Appender;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 492
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall$Appender;->this$0:Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;

    .line 493
    invoke-direct {p1}, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall$Appender;->getMethodCall()Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;->equals(Ljava/lang/Object;)Z

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

    .line 498
    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall$Appender;->this$0:Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall$Appender;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
