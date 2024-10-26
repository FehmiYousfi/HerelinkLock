.class public final enum Lnet/bytebuddy/description/type/TypeDefinition$Sort;
.super Ljava/lang/Enum;
.source "TypeDefinition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Sort"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/description/type/TypeDefinition$Sort;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/description/type/TypeDefinition$Sort;

.field public static final enum GENERIC_ARRAY:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

.field public static final enum NON_GENERIC:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

.field public static final enum PARAMETERIZED:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

.field public static final enum VARIABLE:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

.field public static final enum VARIABLE_SYMBOLIC:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

.field public static final enum WILDCARD:Lnet/bytebuddy/description/type/TypeDefinition$Sort;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 137
    new-instance v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    const/4 v1, 0x0

    const-string v2, "NON_GENERIC"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->NON_GENERIC:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    .line 142
    new-instance v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    const/4 v2, 0x1

    const-string v3, "GENERIC_ARRAY"

    invoke-direct {v0, v3, v2}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->GENERIC_ARRAY:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    .line 147
    new-instance v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    const/4 v3, 0x2

    const-string v4, "PARAMETERIZED"

    invoke-direct {v0, v4, v3}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->PARAMETERIZED:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    .line 152
    new-instance v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    const/4 v4, 0x3

    const-string v5, "WILDCARD"

    invoke-direct {v0, v5, v4}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->WILDCARD:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    .line 157
    new-instance v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    const/4 v5, 0x4

    const-string v6, "VARIABLE"

    invoke-direct {v0, v6, v5}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->VARIABLE:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    .line 163
    new-instance v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    const/4 v6, 0x5

    const-string v7, "VARIABLE_SYMBOLIC"

    invoke-direct {v0, v7, v6}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->VARIABLE_SYMBOLIC:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    const/4 v0, 0x6

    new-array v0, v0, [Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    .line 132
    sget-object v7, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->NON_GENERIC:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    aput-object v7, v0, v1

    sget-object v1, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->GENERIC_ARRAY:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->PARAMETERIZED:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    aput-object v1, v0, v3

    sget-object v1, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->WILDCARD:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    aput-object v1, v0, v4

    sget-object v1, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->VARIABLE:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    aput-object v1, v0, v5

    sget-object v1, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->VARIABLE_SYMBOLIC:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    aput-object v1, v0, v6

    sput-object v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->$VALUES:[Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 132
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    .line 172
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;

    invoke-static {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    return-object p0
.end method

.method protected static describe(Ljava/lang/reflect/Type;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 2

    .line 184
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 185
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType$ForLoadedType;

    check-cast p0, Ljava/lang/Class;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType$ForLoadedType;-><init>(Ljava/lang/Class;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)V

    return-object v0

    .line 186
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_1

    .line 187
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfGenericArray$ForLoadedType;

    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfGenericArray$ForLoadedType;-><init>(Ljava/lang/reflect/GenericArrayType;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)V

    return-object v0

    .line 188
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2

    .line 189
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$ForLoadedType;

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$ForLoadedType;-><init>(Ljava/lang/reflect/ParameterizedType;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)V

    return-object v0

    .line 190
    :cond_2
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_3

    .line 191
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable$ForLoadedType;

    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable$ForLoadedType;-><init>(Ljava/lang/reflect/TypeVariable;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)V

    return-object v0

    .line 192
    :cond_3
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_4

    .line 193
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfWildcardType$ForLoadedType;

    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfWildcardType$ForLoadedType;-><init>(Ljava/lang/reflect/WildcardType;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)V

    return-object v0

    .line 195
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/description/type/TypeDefinition$Sort;
    .locals 1

    .line 132
    const-class v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/description/type/TypeDefinition$Sort;
    .locals 1

    .line 132
    sget-object v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->$VALUES:[Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    invoke-virtual {v0}, [Lnet/bytebuddy/description/type/TypeDefinition$Sort;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    return-object v0
.end method


# virtual methods
.method public isGenericArray()Z
    .locals 1

    .line 223
    sget-object v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->GENERIC_ARRAY:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNonGeneric()Z
    .locals 1

    .line 205
    sget-object v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->NON_GENERIC:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isParameterized()Z
    .locals 1

    .line 214
    sget-object v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->PARAMETERIZED:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTypeVariable()Z
    .locals 1

    .line 241
    sget-object v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->VARIABLE:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    if-eq p0, v0, :cond_1

    sget-object v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->VARIABLE_SYMBOLIC:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isWildcard()Z
    .locals 1

    .line 232
    sget-object v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->WILDCARD:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
