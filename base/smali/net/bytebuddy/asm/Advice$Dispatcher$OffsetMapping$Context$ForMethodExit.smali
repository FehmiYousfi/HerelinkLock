.class public final enum Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;
.super Ljava/lang/Enum;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForMethodExit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;",
        ">;",
        "Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;

.field public static final enum DOUBLE:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;

.field public static final enum SINGLE:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;

.field public static final enum ZERO:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;


# instance fields
.field private final stackSize:Lnet/bytebuddy/implementation/bytecode/StackSize;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1628
    new-instance v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/StackSize;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const/4 v2, 0x0

    const-string v3, "ZERO"

    invoke-direct {v0, v3, v2, v1}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;->ZERO:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;

    .line 1633
    new-instance v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const/4 v3, 0x1

    const-string v4, "SINGLE"

    invoke-direct {v0, v4, v3, v1}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;->SINGLE:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;

    .line 1638
    new-instance v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const/4 v4, 0x2

    const-string v5, "DOUBLE"

    invoke-direct {v0, v5, v4, v1}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;->DOUBLE:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;

    const/4 v0, 0x3

    new-array v0, v0, [Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;

    .line 1623
    sget-object v1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;->ZERO:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;->SINGLE:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;

    aput-object v1, v0, v3

    sget-object v1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;->DOUBLE:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;

    aput-object v1, v0, v4

    sput-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;->$VALUES:[Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackSize;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/bytecode/StackSize;",
            ")V"
        }
    .end annotation

    .line 1650
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1651
    iput-object p3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;->stackSize:Lnet/bytebuddy/implementation/bytecode/StackSize;

    return-void
.end method

.method protected static of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context;
    .locals 3

    .line 1661
    sget-object v0, Lnet/bytebuddy/asm/Advice$1;->$SwitchMap$net$bytebuddy$implementation$bytecode$StackSize:[I

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

    .line 1667
    sget-object p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;->DOUBLE:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;

    return-object p0

    .line 1669
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown stack size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1665
    :cond_1
    sget-object p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;->SINGLE:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;

    return-object p0

    .line 1663
    :cond_2
    sget-object p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;->ZERO:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;
    .locals 1

    .line 1623
    const-class v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;
    .locals 1

    .line 1623
    sget-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;->$VALUES:[Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;

    invoke-virtual {v0}, [Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;

    return-object v0
.end method


# virtual methods
.method public getPadding()I
    .locals 1

    .line 1680
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodExit;->stackSize:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
