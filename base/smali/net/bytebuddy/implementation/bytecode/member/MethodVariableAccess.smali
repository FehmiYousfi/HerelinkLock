.class public final enum Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;
.super Ljava/lang/Enum;
.source "MethodVariableAccess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetIncrementing;,
        Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetWriting;,
        Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetLoading;,
        Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

.field public static final enum DOUBLE:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

.field public static final enum FLOAT:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

.field public static final enum INTEGER:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

.field public static final enum LONG:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

.field public static final enum REFERENCE:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;


# instance fields
.field private final loadOpcode:I

.field private final size:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

.field private final storeOpcode:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 26
    new-instance v6, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    sget-object v5, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v1, "INTEGER"

    const/4 v2, 0x0

    const/16 v3, 0x15

    const/16 v4, 0x36

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;-><init>(Ljava/lang/String;IIILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v6, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->INTEGER:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    .line 31
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    sget-object v12, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v8, "LONG"

    const/4 v9, 0x1

    const/16 v10, 0x16

    const/16 v11, 0x37

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;-><init>(Ljava/lang/String;IIILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->LONG:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    .line 36
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    sget-object v6, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v2, "FLOAT"

    const/4 v3, 0x2

    const/16 v4, 0x17

    const/16 v5, 0x38

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;-><init>(Ljava/lang/String;IIILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->FLOAT:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    .line 41
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    sget-object v12, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v8, "DOUBLE"

    const/4 v9, 0x3

    const/16 v10, 0x18

    const/16 v11, 0x39

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;-><init>(Ljava/lang/String;IIILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    .line 46
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    sget-object v6, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v2, "REFERENCE"

    const/4 v3, 0x4

    const/16 v4, 0x19

    const/16 v5, 0x3a

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;-><init>(Ljava/lang/String;IIILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->REFERENCE:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    const/4 v0, 0x5

    new-array v0, v0, [Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    .line 21
    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->INTEGER:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->LONG:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->FLOAT:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->REFERENCE:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILnet/bytebuddy/implementation/bytecode/StackSize;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lnet/bytebuddy/implementation/bytecode/StackSize;",
            ")V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    iput p3, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadOpcode:I

    .line 72
    invoke-virtual {p5}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toIncreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->size:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    .line 73
    iput p4, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->storeOpcode:I

    return-void
.end method

.method static synthetic access$000(Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;)I
    .locals 0

    .line 21
    iget p0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadOpcode:I

    return p0
.end method

.method static synthetic access$100(Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 0

    .line 21
    iget-object p0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->size:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-object p0
.end method

.method static synthetic access$200(Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;)I
    .locals 0

    .line 21
    iget p0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->storeOpcode:I

    return p0
.end method

.method public static allArgumentsOf(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;
    .locals 2

    .line 107
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler$NoOp;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler$NoOp;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;-><init>(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler;)V

    return-object v0
.end method

.method public static increment(Lnet/bytebuddy/description/method/ParameterDescription;I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    .line 181
    invoke-interface {p0}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    move-result-object v0

    invoke-interface {p0}, Lnet/bytebuddy/description/method/ParameterDescription;->getOffset()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->increment(II)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p0

    return-object p0
.end method

.method public static load(Lnet/bytebuddy/description/method/ParameterDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    .line 160
    invoke-interface {p0}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    move-result-object v0

    invoke-interface {p0}, Lnet/bytebuddy/description/method/ParameterDescription;->getOffset()I

    move-result p0

    invoke-virtual {v0, p0}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadFrom(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p0

    return-object p0
.end method

.method public static loadThis()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 2

    .line 116
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->REFERENCE:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadFrom(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    return-object v0
.end method

.method public static of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;
    .locals 1

    .line 83
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 84
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->LONG:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    return-object p0

    .line 86
    :cond_0
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    return-object p0

    .line 88
    :cond_1
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->FLOAT:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    return-object p0

    .line 90
    :cond_2
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 93
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->INTEGER:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    return-object p0

    .line 91
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Variable type cannot be void"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 96
    :cond_4
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->REFERENCE:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    return-object p0
.end method

.method public static store(Lnet/bytebuddy/description/method/ParameterDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    .line 170
    invoke-interface {p0}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    move-result-object v0

    invoke-interface {p0}, Lnet/bytebuddy/description/method/ParameterDescription;->getOffset()I

    move-result p0

    invoke-virtual {v0, p0}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->storeAt(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;
    .locals 1

    .line 21
    const-class v0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;
    .locals 1

    .line 21
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    return-object v0
.end method


# virtual methods
.method public increment(II)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    .line 147
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->INTEGER:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    if-ne p0, v0, :cond_0

    .line 150
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetIncrementing;

    invoke-direct {v0, p1, p2}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetIncrementing;-><init>(II)V

    return-object v0

    .line 148
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot increment type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public loadFrom(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    .line 126
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetLoading;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetLoading;-><init>(Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;I)V

    return-object v0
.end method

.method public storeAt(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    .line 136
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetWriting;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetWriting;-><init>(Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;I)V

    return-object v0
.end method
