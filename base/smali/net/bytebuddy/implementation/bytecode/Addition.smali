.class public final enum Lnet/bytebuddy/implementation/bytecode/Addition;
.super Ljava/lang/Enum;
.source "Addition.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/Addition;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/Addition;

.field public static final enum DOUBLE:Lnet/bytebuddy/implementation/bytecode/Addition;

.field public static final enum FLOAT:Lnet/bytebuddy/implementation/bytecode/Addition;

.field public static final enum INTEGER:Lnet/bytebuddy/implementation/bytecode/Addition;

.field public static final enum LONG:Lnet/bytebuddy/implementation/bytecode/Addition;


# instance fields
.field private final opcode:I

.field private final stackSize:Lnet/bytebuddy/implementation/bytecode/StackSize;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 15
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/Addition;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const/4 v2, 0x0

    const-string v3, "INTEGER"

    const/16 v4, 0x60

    invoke-direct {v0, v3, v2, v4, v1}, Lnet/bytebuddy/implementation/bytecode/Addition;-><init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/Addition;->INTEGER:Lnet/bytebuddy/implementation/bytecode/Addition;

    .line 20
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/Addition;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const/4 v3, 0x1

    const-string v4, "LONG"

    const/16 v5, 0x61

    invoke-direct {v0, v4, v3, v5, v1}, Lnet/bytebuddy/implementation/bytecode/Addition;-><init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/Addition;->LONG:Lnet/bytebuddy/implementation/bytecode/Addition;

    .line 25
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/Addition;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const/4 v4, 0x2

    const-string v5, "FLOAT"

    const/16 v6, 0x62

    invoke-direct {v0, v5, v4, v6, v1}, Lnet/bytebuddy/implementation/bytecode/Addition;-><init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/Addition;->FLOAT:Lnet/bytebuddy/implementation/bytecode/Addition;

    .line 30
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/Addition;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const/4 v5, 0x3

    const-string v6, "DOUBLE"

    const/16 v7, 0x63

    invoke-direct {v0, v6, v5, v7, v1}, Lnet/bytebuddy/implementation/bytecode/Addition;-><init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/Addition;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/Addition;

    const/4 v0, 0x4

    new-array v0, v0, [Lnet/bytebuddy/implementation/bytecode/Addition;

    .line 10
    sget-object v1, Lnet/bytebuddy/implementation/bytecode/Addition;->INTEGER:Lnet/bytebuddy/implementation/bytecode/Addition;

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/Addition;->LONG:Lnet/bytebuddy/implementation/bytecode/Addition;

    aput-object v1, v0, v3

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/Addition;->FLOAT:Lnet/bytebuddy/implementation/bytecode/Addition;

    aput-object v1, v0, v4

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/Addition;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/Addition;

    aput-object v1, v0, v5

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/Addition;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/Addition;

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

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lnet/bytebuddy/implementation/bytecode/Addition;->opcode:I

    .line 49
    iput-object p4, p0, Lnet/bytebuddy/implementation/bytecode/Addition;->stackSize:Lnet/bytebuddy/implementation/bytecode/StackSize;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/Addition;
    .locals 1

    .line 10
    const-class v0, Lnet/bytebuddy/implementation/bytecode/Addition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/Addition;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/Addition;
    .locals 1

    .line 10
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/Addition;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/Addition;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/Addition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/Addition;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 0

    .line 59
    iget p2, p0, Lnet/bytebuddy/implementation/bytecode/Addition;->opcode:I

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 60
    iget-object p1, p0, Lnet/bytebuddy/implementation/bytecode/Addition;->stackSize:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toDecreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    return-object p1
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
