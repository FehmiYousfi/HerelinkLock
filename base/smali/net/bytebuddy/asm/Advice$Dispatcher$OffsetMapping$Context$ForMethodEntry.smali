.class public final enum Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodEntry;
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
    name = "ForMethodEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodEntry;",
        ">;",
        "Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodEntry;

.field public static final enum INITIALIZED:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodEntry;

.field public static final enum NON_INITIALIZED:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodEntry;


# instance fields
.field private final initialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1576
    new-instance v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodEntry;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "INITIALIZED"

    invoke-direct {v0, v3, v2, v1}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodEntry;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodEntry;->INITIALIZED:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodEntry;

    .line 1581
    new-instance v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodEntry;

    const-string v3, "NON_INITIALIZED"

    invoke-direct {v0, v3, v1, v2}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodEntry;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodEntry;->NON_INITIALIZED:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodEntry;

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodEntry;

    .line 1571
    sget-object v3, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodEntry;->INITIALIZED:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodEntry;

    aput-object v3, v0, v2

    sget-object v2, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodEntry;->NON_INITIALIZED:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodEntry;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodEntry;->$VALUES:[Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodEntry;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1605
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1606
    iput-boolean p3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodEntry;->initialized:Z

    return-void
.end method

.method protected static of(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context;
    .locals 0

    .line 1590
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodEntry;->NON_INITIALIZED:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodEntry;

    goto :goto_0

    :cond_0
    sget-object p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodEntry;->INITIALIZED:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodEntry;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodEntry;
    .locals 1

    .line 1571
    const-class v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodEntry;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodEntry;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodEntry;
    .locals 1

    .line 1571
    sget-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodEntry;->$VALUES:[Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodEntry;

    invoke-virtual {v0}, [Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodEntry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodEntry;

    return-object v0
.end method


# virtual methods
.method public getPadding()I
    .locals 1

    .line 1616
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackSize;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .line 1611
    iget-boolean v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodEntry;->initialized:Z

    return v0
.end method
