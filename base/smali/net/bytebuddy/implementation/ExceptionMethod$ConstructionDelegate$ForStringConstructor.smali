.class public Lnet/bytebuddy/implementation/ExceptionMethod$ConstructionDelegate$ForStringConstructor;
.super Ljava/lang/Object;
.source "ExceptionMethod.java"

# interfaces
.implements Lnet/bytebuddy/implementation/ExceptionMethod$ConstructionDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/ExceptionMethod$ConstructionDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForStringConstructor"
.end annotation


# instance fields
.field private final exceptionType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final message:Ljava/lang/String;

.field private final targetConstructor:Lnet/bytebuddy/description/method/MethodDescription;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;)V
    .locals 4

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p1, p0, Lnet/bytebuddy/implementation/ExceptionMethod$ConstructionDelegate$ForStringConstructor;->exceptionType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 201
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object p1

    .line 202
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isConstructor()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->takesArguments([Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/method/MethodDescription;

    iput-object p1, p0, Lnet/bytebuddy/implementation/ExceptionMethod$ConstructionDelegate$ForStringConstructor;->targetConstructor:Lnet/bytebuddy/description/method/MethodDescription;

    .line 203
    iput-object p2, p0, Lnet/bytebuddy/implementation/ExceptionMethod$ConstructionDelegate$ForStringConstructor;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 175
    instance-of p1, p1, Lnet/bytebuddy/implementation/ExceptionMethod$ConstructionDelegate$ForStringConstructor;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 175
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/implementation/ExceptionMethod$ConstructionDelegate$ForStringConstructor;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/implementation/ExceptionMethod$ConstructionDelegate$ForStringConstructor;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/implementation/ExceptionMethod$ConstructionDelegate$ForStringConstructor;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/implementation/ExceptionMethod$ConstructionDelegate$ForStringConstructor;->exceptionType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, p1, Lnet/bytebuddy/implementation/ExceptionMethod$ConstructionDelegate$ForStringConstructor;->exceptionType:Lnet/bytebuddy/description/type/TypeDescription;

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    iget-object v1, p0, Lnet/bytebuddy/implementation/ExceptionMethod$ConstructionDelegate$ForStringConstructor;->targetConstructor:Lnet/bytebuddy/description/method/MethodDescription;

    iget-object v3, p1, Lnet/bytebuddy/implementation/ExceptionMethod$ConstructionDelegate$ForStringConstructor;->targetConstructor:Lnet/bytebuddy/description/method/MethodDescription;

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    return v2

    :cond_6
    iget-object v1, p0, Lnet/bytebuddy/implementation/ExceptionMethod$ConstructionDelegate$ForStringConstructor;->message:Ljava/lang/String;

    iget-object p1, p1, Lnet/bytebuddy/implementation/ExceptionMethod$ConstructionDelegate$ForStringConstructor;->message:Ljava/lang/String;

    if-nez v1, :cond_7

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    :goto_2
    return v2

    :cond_8
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 175
    iget-object v0, p0, Lnet/bytebuddy/implementation/ExceptionMethod$ConstructionDelegate$ForStringConstructor;->exceptionType:Lnet/bytebuddy/description/type/TypeDescription;

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    iget-object v3, p0, Lnet/bytebuddy/implementation/ExceptionMethod$ConstructionDelegate$ForStringConstructor;->targetConstructor:Lnet/bytebuddy/description/method/MethodDescription;

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/implementation/ExceptionMethod$ConstructionDelegate$ForStringConstructor;->message:Ljava/lang/String;

    mul-int/2addr v0, v2

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public make()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 4

    .line 208
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v1, 0x4

    new-array v1, v1, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v2, p0, Lnet/bytebuddy/implementation/ExceptionMethod$ConstructionDelegate$ForStringConstructor;->exceptionType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 209
    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/TypeCreation;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lnet/bytebuddy/implementation/bytecode/Duplication;->SINGLE:Lnet/bytebuddy/implementation/bytecode/Duplication;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lnet/bytebuddy/implementation/bytecode/constant/TextConstant;

    iget-object v3, p0, Lnet/bytebuddy/implementation/ExceptionMethod$ConstructionDelegate$ForStringConstructor;->message:Ljava/lang/String;

    invoke-direct {v2, v3}, Lnet/bytebuddy/implementation/bytecode/constant/TextConstant;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lnet/bytebuddy/implementation/ExceptionMethod$ConstructionDelegate$ForStringConstructor;->targetConstructor:Lnet/bytebuddy/description/method/MethodDescription;

    .line 212
    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object v0
.end method
