.class public final enum Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;
.super Ljava/lang/Enum;
.source "MethodInvocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;,
        Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleInvocation;,
        Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;,
        Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;,
        Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$OfGenericMethod;,
        Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;,
        Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$IllegalInvocation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

.field public static final enum INTERFACE:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

.field public static final enum SPECIAL:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

.field public static final enum SPECIAL_CONSTRUCTOR:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

.field public static final enum STATIC:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

.field public static final enum VIRTUAL:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;


# instance fields
.field private final handle:I

.field private final invocationOpcode:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 24
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const-string v3, "VIRTUAL"

    const/16 v4, 0xb6

    invoke-direct {v0, v3, v2, v4, v1}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->VIRTUAL:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    .line 29
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    const/4 v3, 0x1

    const-string v4, "INTERFACE"

    const/16 v5, 0xb9

    const/16 v6, 0x9

    invoke-direct {v0, v4, v3, v5, v6}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->INTERFACE:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    .line 34
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    const/4 v4, 0x2

    const-string v5, "STATIC"

    const/16 v6, 0xb8

    const/4 v7, 0x6

    invoke-direct {v0, v5, v4, v6, v7}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->STATIC:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    .line 39
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    const/16 v5, 0xb7

    const/4 v6, 0x3

    const-string v7, "SPECIAL"

    const/4 v8, 0x7

    invoke-direct {v0, v7, v6, v5, v8}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->SPECIAL:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    .line 44
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    const/4 v7, 0x4

    const-string v8, "SPECIAL_CONSTRUCTOR"

    const/16 v9, 0x8

    invoke-direct {v0, v8, v7, v5, v9}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->SPECIAL_CONSTRUCTOR:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    new-array v0, v1, [Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    .line 19
    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->VIRTUAL:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->INTERFACE:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    aput-object v1, v0, v3

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->STATIC:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    aput-object v1, v0, v4

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->SPECIAL:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    aput-object v1, v0, v6

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->SPECIAL_CONSTRUCTOR:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    aput-object v1, v0, v7

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput p3, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invocationOpcode:I

    .line 64
    iput p4, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->handle:I

    return-void
.end method

.method static synthetic access$000(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;)I
    .locals 0

    .line 19
    iget p0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invocationOpcode:I

    return p0
.end method

.method static synthetic access$100(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;)I
    .locals 0

    .line 19
    iget p0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->handle:I

    return p0
.end method

.method public static invoke(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;
    .locals 2

    .line 74
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isTypeInitializer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$IllegalInvocation;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$IllegalInvocation;

    return-object p0

    .line 76
    :cond_0
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->STATIC:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;-><init>(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V

    return-object v0

    .line 78
    :cond_1
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->SPECIAL_CONSTRUCTOR:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;-><init>(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V

    return-object v0

    .line 80
    :cond_2
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->SPECIAL:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;-><init>(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V

    return-object v0

    .line 82
    :cond_3
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 83
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->INTERFACE:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;-><init>(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V

    return-object v0

    .line 85
    :cond_4
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->VIRTUAL:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;-><init>(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V

    return-object v0
.end method

.method public static invoke(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;
    .locals 3

    .line 97
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription;->asDefined()Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 98
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object p0

    goto :goto_0

    .line 100
    :cond_0
    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$OfGenericMethod;->of(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;
    .locals 1

    .line 19
    const-class v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;
    .locals 1

    .line 19
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    return-object v0
.end method
