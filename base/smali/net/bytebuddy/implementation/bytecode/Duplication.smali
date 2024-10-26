.class public abstract enum Lnet/bytebuddy/implementation/bytecode/Duplication;
.super Ljava/lang/Enum;
.source "Duplication.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/Duplication;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/Duplication;

.field public static final enum DOUBLE:Lnet/bytebuddy/implementation/bytecode/Duplication;

.field public static final enum SINGLE:Lnet/bytebuddy/implementation/bytecode/Duplication;

.field public static final enum ZERO:Lnet/bytebuddy/implementation/bytecode/Duplication;


# instance fields
.field private final opcode:I

.field protected final size:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 16
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/Duplication$1;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/StackSize;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const/4 v2, 0x0

    const-string v3, "ZERO"

    invoke-direct {v0, v3, v2, v1, v2}, Lnet/bytebuddy/implementation/bytecode/Duplication$1;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackSize;I)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/Duplication;->ZERO:Lnet/bytebuddy/implementation/bytecode/Duplication;

    .line 31
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/Duplication$2;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const/4 v3, 0x1

    const-string v4, "SINGLE"

    const/16 v5, 0x59

    invoke-direct {v0, v4, v3, v1, v5}, Lnet/bytebuddy/implementation/bytecode/Duplication$2;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackSize;I)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/Duplication;->SINGLE:Lnet/bytebuddy/implementation/bytecode/Duplication;

    .line 48
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/Duplication$3;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const/4 v4, 0x2

    const-string v5, "DOUBLE"

    const/16 v6, 0x5c

    invoke-direct {v0, v5, v4, v1, v6}, Lnet/bytebuddy/implementation/bytecode/Duplication$3;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackSize;I)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/Duplication;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/Duplication;

    const/4 v0, 0x3

    new-array v0, v0, [Lnet/bytebuddy/implementation/bytecode/Duplication;

    .line 11
    sget-object v1, Lnet/bytebuddy/implementation/bytecode/Duplication;->ZERO:Lnet/bytebuddy/implementation/bytecode/Duplication;

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/Duplication;->SINGLE:Lnet/bytebuddy/implementation/bytecode/Duplication;

    aput-object v1, v0, v3

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/Duplication;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/Duplication;

    aput-object v1, v0, v4

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/Duplication;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/Duplication;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackSize;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/bytecode/StackSize;",
            "I)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    invoke-virtual {p3}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toIncreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/Duplication;->size:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    .line 80
    iput p4, p0, Lnet/bytebuddy/implementation/bytecode/Duplication;->opcode:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackSize;ILnet/bytebuddy/implementation/bytecode/Duplication$1;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/bytebuddy/implementation/bytecode/Duplication;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackSize;I)V

    return-void
.end method

.method public static of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/Duplication;
    .locals 3

    .line 90
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/Duplication$4;->$SwitchMap$net$bytebuddy$implementation$bytecode$StackSize:[I

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 96
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/Duplication;->ZERO:Lnet/bytebuddy/implementation/bytecode/Duplication;

    return-object p0

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 94
    :cond_1
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/Duplication;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/Duplication;

    return-object p0

    .line 92
    :cond_2
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/Duplication;->SINGLE:Lnet/bytebuddy/implementation/bytecode/Duplication;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/Duplication;
    .locals 1

    .line 11
    const-class v0, Lnet/bytebuddy/implementation/bytecode/Duplication;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/Duplication;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/Duplication;
    .locals 1

    .line 11
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/Duplication;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/Duplication;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/Duplication;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/Duplication;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 0

    .line 117
    iget p2, p0, Lnet/bytebuddy/implementation/bytecode/Duplication;->opcode:I

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 118
    iget-object p1, p0, Lnet/bytebuddy/implementation/bytecode/Duplication;->size:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-object p1
.end method

.method public abstract flipOver(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
