.class public final enum Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;
.super Ljava/lang/Enum;
.source "Duplication.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/Duplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "WithFlip"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

.field public static final enum DOUBLE_DOUBLE:Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

.field public static final enum DOUBLE_SINGLE:Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

.field public static final enum SINGLE_DOUBLE:Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

.field public static final enum SINGLE_SINGLE:Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;


# instance fields
.field private final opcode:I

.field private final stackSize:Lnet/bytebuddy/implementation/bytecode/StackSize;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 129
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const/4 v2, 0x0

    const-string v3, "SINGLE_SINGLE"

    const/16 v4, 0x5a

    invoke-direct {v0, v3, v2, v4, v1}, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;-><init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;->SINGLE_SINGLE:Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

    .line 134
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const/4 v3, 0x1

    const-string v4, "SINGLE_DOUBLE"

    const/16 v5, 0x5b

    invoke-direct {v0, v4, v3, v5, v1}, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;-><init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;->SINGLE_DOUBLE:Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

    .line 139
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const/4 v4, 0x2

    const-string v5, "DOUBLE_SINGLE"

    const/16 v6, 0x5d

    invoke-direct {v0, v5, v4, v6, v1}, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;-><init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;->DOUBLE_SINGLE:Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

    .line 144
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const/4 v5, 0x3

    const-string v6, "DOUBLE_DOUBLE"

    const/16 v7, 0x5e

    invoke-direct {v0, v6, v5, v7, v1}, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;-><init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;->DOUBLE_DOUBLE:Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

    const/4 v0, 0x4

    new-array v0, v0, [Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

    .line 124
    sget-object v1, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;->SINGLE_SINGLE:Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;->SINGLE_DOUBLE:Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

    aput-object v1, v0, v3

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;->DOUBLE_SINGLE:Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

    aput-object v1, v0, v4

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;->DOUBLE_DOUBLE:Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

    aput-object v1, v0, v5

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnet/bytebuddy/implementation/bytecode/StackSize;",
            ")V"
        }
    .end annotation

    .line 162
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 163
    iput p3, p0, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;->opcode:I

    .line 164
    iput-object p4, p0, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;->stackSize:Lnet/bytebuddy/implementation/bytecode/StackSize;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;
    .locals 1

    .line 124
    const-class v0, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;
    .locals 1

    .line 124
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 0

    .line 174
    iget p2, p0, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;->opcode:I

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 175
    iget-object p1, p0, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;->stackSize:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toIncreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    return-object p1
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
