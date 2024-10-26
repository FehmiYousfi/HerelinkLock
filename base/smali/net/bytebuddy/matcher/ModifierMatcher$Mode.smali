.class public final enum Lnet/bytebuddy/matcher/ModifierMatcher$Mode;
.super Ljava/lang/Enum;
.source "ModifierMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/matcher/ModifierMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/matcher/ModifierMatcher$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum ABSTRACT:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum ANNOTATION:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum BRIDGE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum ENUMERATION:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum FINAL:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum INTERFACE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum MANDATED:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum NATIVE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum PRIVATE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum PROTECTED:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum PUBLIC:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum STATIC:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum STRICT:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum SYNCHRONIZED:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum SYNTHETIC:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum TRANSIENT:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum VAR_ARGS:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum VOLATILE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;


# instance fields
.field private final description:Ljava/lang/String;

.field private final modifiers:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 47
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "PUBLIC"

    const-string v4, "isPublic()"

    invoke-direct {v0, v3, v1, v2, v4}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->PUBLIC:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    .line 52
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const/4 v3, 0x4

    const-string v4, "PROTECTED"

    const-string v5, "isProtected()"

    invoke-direct {v0, v4, v2, v3, v5}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->PROTECTED:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    .line 57
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const/4 v4, 0x2

    const-string v5, "PRIVATE"

    const-string v6, "isPrivate()"

    invoke-direct {v0, v5, v4, v4, v6}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->PRIVATE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    .line 62
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const/4 v5, 0x3

    const/16 v6, 0x10

    const-string v7, "FINAL"

    const-string v8, "isFinal()"

    invoke-direct {v0, v7, v5, v6, v8}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->FINAL:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    .line 67
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const/16 v7, 0x8

    const-string v8, "STATIC"

    const-string v9, "isStatic()"

    invoke-direct {v0, v8, v3, v7, v9}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->STATIC:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    .line 72
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const/4 v8, 0x5

    const-string v9, "SYNCHRONIZED"

    const/16 v10, 0x20

    const-string v11, "isSynchronized()"

    invoke-direct {v0, v9, v8, v10, v11}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->SYNCHRONIZED:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    .line 77
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const/4 v9, 0x6

    const-string v10, "NATIVE"

    const/16 v11, 0x100

    const-string v12, "isNative()"

    invoke-direct {v0, v10, v9, v11, v12}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->NATIVE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    .line 82
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const/4 v10, 0x7

    const-string v11, "STRICT"

    const/16 v12, 0x800

    const-string v13, "isStrict()"

    invoke-direct {v0, v11, v10, v12, v13}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->STRICT:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    .line 87
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const/16 v11, 0x80

    const-string v12, "VAR_ARGS"

    const-string v13, "isVarArgs()"

    invoke-direct {v0, v12, v7, v11, v13}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->VAR_ARGS:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    .line 92
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const/16 v12, 0x9

    const-string v13, "SYNTHETIC"

    const/16 v14, 0x1000

    const-string v15, "isSynthetic()"

    invoke-direct {v0, v13, v12, v14, v15}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->SYNTHETIC:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    .line 97
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const/16 v13, 0x40

    const/16 v14, 0xa

    const-string v15, "BRIDGE"

    const-string v12, "isBridge()"

    invoke-direct {v0, v15, v14, v13, v12}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->BRIDGE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    .line 102
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const/16 v12, 0xb

    const-string v15, "ABSTRACT"

    const/16 v14, 0x400

    const-string v7, "isAbstract()"

    invoke-direct {v0, v15, v12, v14, v7}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->ABSTRACT:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    .line 107
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const-string v7, "INTERFACE"

    const/16 v14, 0xc

    const/16 v15, 0x200

    const-string v12, "isInterface()"

    invoke-direct {v0, v7, v14, v15, v12}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->INTERFACE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    .line 112
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const-string v7, "ANNOTATION"

    const/16 v12, 0xd

    const/16 v14, 0x2000

    const-string v15, "isAnnotation()"

    invoke-direct {v0, v7, v12, v14, v15}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->ANNOTATION:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    .line 117
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const-string v7, "VOLATILE"

    const/16 v12, 0xe

    const-string v14, "isVolatile()"

    invoke-direct {v0, v7, v12, v13, v14}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->VOLATILE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    .line 122
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const-string v7, "TRANSIENT"

    const/16 v12, 0xf

    const-string v13, "isTransient()"

    invoke-direct {v0, v7, v12, v11, v13}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->TRANSIENT:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    .line 127
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const-string v7, "MANDATED"

    const v11, 0x8000

    const-string v12, "isMandated()"

    invoke-direct {v0, v7, v6, v11, v12}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->MANDATED:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    .line 132
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const-string v7, "ENUMERATION"

    const/16 v11, 0x11

    const/16 v12, 0x4000

    const-string v13, "isEnum()"

    invoke-direct {v0, v7, v11, v12, v13}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->ENUMERATION:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const/16 v0, 0x12

    new-array v0, v0, [Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    .line 42
    sget-object v7, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->PUBLIC:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    aput-object v7, v0, v1

    sget-object v1, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->PROTECTED:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->PRIVATE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->FINAL:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    aput-object v1, v0, v5

    sget-object v1, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->STATIC:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->SYNCHRONIZED:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    aput-object v1, v0, v8

    sget-object v1, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->NATIVE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    aput-object v1, v0, v9

    sget-object v1, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->STRICT:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    aput-object v1, v0, v10

    sget-object v1, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->VAR_ARGS:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->SYNTHETIC:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->BRIDGE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->ABSTRACT:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->INTERFACE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->ANNOTATION:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->VOLATILE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->TRANSIENT:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->MANDATED:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    aput-object v1, v0, v6

    sget-object v1, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->ENUMERATION:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->$VALUES:[Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 150
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 151
    iput p3, p0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->modifiers:I

    .line 152
    iput-object p4, p0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/matcher/ModifierMatcher$Mode;
    .locals 1

    .line 42
    const-class v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/matcher/ModifierMatcher$Mode;
    .locals 1

    .line 42
    sget-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->$VALUES:[Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-virtual {v0}, [Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    return-object v0
.end method


# virtual methods
.method protected getDescription()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->description:Ljava/lang/String;

    return-object v0
.end method

.method protected getModifiers()I
    .locals 1

    .line 170
    iget v0, p0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->modifiers:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModifierMatcher.Mode."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
