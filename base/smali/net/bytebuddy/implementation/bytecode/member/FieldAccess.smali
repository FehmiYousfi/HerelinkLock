.class public final enum Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;
.super Ljava/lang/Enum;
.source "FieldAccess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;,
        Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$OfGenericField;,
        Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;

.field public static final enum STATIC:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;


# instance fields
.field private final getterOpcode:I

.field private final putterOpcode:I

.field private final targetSizeChange:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 25
    new-instance v6, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;

    sget-object v5, Lnet/bytebuddy/implementation/bytecode/StackSize;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v1, "STATIC"

    const/4 v2, 0x0

    const/16 v3, 0xb3

    const/16 v4, 0xb2

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;-><init>(Ljava/lang/String;IIILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v6, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->STATIC:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;

    .line 30
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;

    sget-object v12, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v8, "INSTANCE"

    const/4 v9, 0x1

    const/16 v10, 0xb5

    const/16 v11, 0xb4

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;-><init>(Ljava/lang/String;IIILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;

    .line 20
    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->STATIC:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;

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

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    iput p3, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->putterOpcode:I

    .line 58
    iput p4, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->getterOpcode:I

    .line 59
    invoke-virtual {p5}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result p1

    iput p1, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->targetSizeChange:I

    return-void
.end method

.method static synthetic access$200(Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;)I
    .locals 0

    .line 20
    iget p0, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->getterOpcode:I

    return p0
.end method

.method static synthetic access$300(Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;)I
    .locals 0

    .line 20
    iget p0, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->targetSizeChange:I

    return p0
.end method

.method static synthetic access$400(Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;)I
    .locals 0

    .line 20
    iget p0, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->putterOpcode:I

    return p0
.end method

.method public static forEnumeration(Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 2

    .line 69
    invoke-interface {p0}, Lnet/bytebuddy/description/enumeration/EnumerationDescription;->getEnumerationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    .line 70
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;

    move-result-object v0

    .line 71
    invoke-interface {p0}, Lnet/bytebuddy/description/enumeration/EnumerationDescription;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-interface {v0, p0}, Lnet/bytebuddy/description/field/FieldList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/description/field/FieldList;

    .line 72
    invoke-interface {p0}, Lnet/bytebuddy/description/field/FieldList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-interface {p0}, Lnet/bytebuddy/description/field/FieldList;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lnet/bytebuddy/description/field/FieldList;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lnet/bytebuddy/description/field/FieldList;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->isEnum()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->STATIC:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    invoke-interface {p0}, Lnet/bytebuddy/description/field/FieldList;->getOnly()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;-><init>(Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)V

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;->read()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p0

    goto :goto_1

    .line 72
    :cond_1
    :goto_0
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;

    :goto_1
    return-object p0
.end method

.method public static forField(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;
    .locals 2

    .line 84
    invoke-interface {p0}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->STATIC:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;-><init>(Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;-><init>(Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)V

    :goto_0
    return-object v0
.end method

.method public static forField(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;
    .locals 3

    .line 97
    invoke-interface {p0}, Lnet/bytebuddy/description/field/FieldDescription;->asDefined()Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    .line 98
    invoke-interface {p0}, Lnet/bytebuddy/description/field/FieldDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v0}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->forField(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

    move-result-object p0

    goto :goto_0

    .line 100
    :cond_0
    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->forField(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$OfGenericField;->of(Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;)Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;
    .locals 1

    .line 20
    const-class v0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;
    .locals 1

    .line 20
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;

    return-object v0
.end method
