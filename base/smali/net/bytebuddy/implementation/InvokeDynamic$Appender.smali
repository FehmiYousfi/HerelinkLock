.class public Lnet/bytebuddy/implementation/InvokeDynamic$Appender;
.super Ljava/lang/Object;
.source "InvokeDynamic.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/InvokeDynamic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Appender"
.end annotation


# instance fields
.field private final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

.field final synthetic this$0:Lnet/bytebuddy/implementation/InvokeDynamic;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/InvokeDynamic;Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0

    .line 2942
    iput-object p1, p0, Lnet/bytebuddy/implementation/InvokeDynamic$Appender;->this$0:Lnet/bytebuddy/implementation/InvokeDynamic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2943
    iput-object p2, p0, Lnet/bytebuddy/implementation/InvokeDynamic$Appender;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    return-void
.end method

.method private getOuter()Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 1

    .line 2976
    iget-object v0, p0, Lnet/bytebuddy/implementation/InvokeDynamic$Appender;->this$0:Lnet/bytebuddy/implementation/InvokeDynamic;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 8

    .line 2948
    iget-object v0, p0, Lnet/bytebuddy/implementation/InvokeDynamic$Appender;->this$0:Lnet/bytebuddy/implementation/InvokeDynamic;

    iget-object v0, v0, Lnet/bytebuddy/implementation/InvokeDynamic;->invocationProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    invoke-interface {v0, p3}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;->make(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Target;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic$Appender;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic$Appender;->this$0:Lnet/bytebuddy/implementation/InvokeDynamic;

    iget-object v2, v2, Lnet/bytebuddy/implementation/InvokeDynamic;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v3, p0, Lnet/bytebuddy/implementation/InvokeDynamic$Appender;->this$0:Lnet/bytebuddy/implementation/InvokeDynamic;

    iget-object v3, v3, Lnet/bytebuddy/implementation/InvokeDynamic;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-interface {v0, v1, v2, v3}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Target;->resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Target$Resolved;

    move-result-object v0

    .line 2949
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v2, 0x3

    new-array v2, v2, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 2950
    invoke-interface {v0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Target$Resolved;->getStackManipulation()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lnet/bytebuddy/implementation/InvokeDynamic$Appender;->this$0:Lnet/bytebuddy/implementation/InvokeDynamic;

    iget-object v3, v3, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 2951
    invoke-static {v3}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v3

    .line 2952
    invoke-interface {v0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Target$Resolved;->getInternalName()Ljava/lang/String;

    move-result-object v4

    .line 2953
    invoke-interface {v0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Target$Resolved;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v5

    .line 2954
    invoke-interface {v0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Target$Resolved;->getParameterTypes()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lnet/bytebuddy/implementation/InvokeDynamic$Appender;->this$0:Lnet/bytebuddy/implementation/InvokeDynamic;

    iget-object v7, v7, Lnet/bytebuddy/implementation/InvokeDynamic;->handleArguments:Ljava/util/List;

    .line 2952
    invoke-interface {v3, v4, v5, v6, v7}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;->dynamic(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;Ljava/util/List;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lnet/bytebuddy/implementation/InvokeDynamic$Appender;->this$0:Lnet/bytebuddy/implementation/InvokeDynamic;

    iget-object v3, v3, Lnet/bytebuddy/implementation/InvokeDynamic;->terminationHandler:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    .line 2956
    invoke-interface {v0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Target$Resolved;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    iget-object v4, p0, Lnet/bytebuddy/implementation/InvokeDynamic$Appender;->this$0:Lnet/bytebuddy/implementation/InvokeDynamic;

    iget-object v4, v4, Lnet/bytebuddy/implementation/InvokeDynamic;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v5, p0, Lnet/bytebuddy/implementation/InvokeDynamic$Appender;->this$0:Lnet/bytebuddy/implementation/InvokeDynamic;

    iget-object v5, v5, Lnet/bytebuddy/implementation/InvokeDynamic;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-virtual {v3, p3, v0, v4, v5}, Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;->resolve(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    .line 2957
    invoke-virtual {v1, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    .line 2958
    new-instance p2, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getMaximalSize()I

    move-result p1

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result p3

    invoke-direct {p2, p1, p3}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;-><init>(II)V

    return-object p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 2964
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2965
    :cond_1
    check-cast p1, Lnet/bytebuddy/implementation/InvokeDynamic$Appender;

    .line 2966
    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic$Appender;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, p1, Lnet/bytebuddy/implementation/InvokeDynamic$Appender;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic$Appender;->this$0:Lnet/bytebuddy/implementation/InvokeDynamic;

    .line 2967
    invoke-direct {p1}, Lnet/bytebuddy/implementation/InvokeDynamic$Appender;->getOuter()Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    invoke-virtual {v2, p1}, Lnet/bytebuddy/implementation/InvokeDynamic;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 2981
    iget-object v0, p0, Lnet/bytebuddy/implementation/InvokeDynamic$Appender;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic$Appender;->this$0:Lnet/bytebuddy/implementation/InvokeDynamic;

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/InvokeDynamic;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method
