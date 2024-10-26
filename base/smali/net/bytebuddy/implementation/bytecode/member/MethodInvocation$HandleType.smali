.class public final enum Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;
.super Ljava/lang/Enum;
.source "MethodInvocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HandleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;

.field public static final enum EXACT:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;

.field public static final enum REGULAR:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;


# instance fields
.field private final methodName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 544
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;

    const/4 v1, 0x0

    const-string v2, "EXACT"

    const-string v3, "invokeExact"

    invoke-direct {v0, v2, v1, v3}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;->EXACT:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;

    .line 549
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;

    const/4 v2, 0x1

    const-string v3, "REGULAR"

    const-string v4, "invoke"

    invoke-direct {v0, v3, v2, v4}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;->REGULAR:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;

    .line 539
    sget-object v3, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;->EXACT:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;

    aput-object v3, v0, v1

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;->REGULAR:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;

    aput-object v1, v0, v2

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 561
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 562
    iput-object p3, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;->methodName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;
    .locals 1

    .line 539
    const-class v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;
    .locals 1

    .line 539
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;

    return-object v0
.end method


# virtual methods
.method protected getMethodName()Ljava/lang/String;
    .locals 1

    .line 571
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;->methodName:Ljava/lang/String;

    return-object v0
.end method
