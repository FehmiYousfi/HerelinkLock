.class public final enum Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCacheIllegal;
.super Ljava/lang/Enum;
.source "MethodConstant.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "CanCacheIllegal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCacheIllegal;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCache;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCacheIllegal;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCacheIllegal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 124
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCacheIllegal;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCacheIllegal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCacheIllegal;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCacheIllegal;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCacheIllegal;

    .line 119
    sget-object v2, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCacheIllegal;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCacheIllegal;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCacheIllegal;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCacheIllegal;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCacheIllegal;
    .locals 1

    .line 119
    const-class v0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCacheIllegal;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCacheIllegal;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCacheIllegal;
    .locals 1

    .line 119
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCacheIllegal;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCacheIllegal;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCacheIllegal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCacheIllegal;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 1

    .line 138
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    return-object p1
.end method

.method public cached()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    .line 128
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
