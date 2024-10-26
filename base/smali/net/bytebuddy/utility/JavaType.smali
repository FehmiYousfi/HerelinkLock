.class public final enum Lnet/bytebuddy/utility/JavaType;
.super Ljava/lang/Enum;
.source "JavaType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/utility/JavaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/utility/JavaType;

.field public static final enum CALL_SITE:Lnet/bytebuddy/utility/JavaType;

.field public static final enum EXECUTABLE:Lnet/bytebuddy/utility/JavaType;

.field public static final enum METHOD_HANDLE:Lnet/bytebuddy/utility/JavaType;

.field public static final enum METHOD_HANDLES_LOOKUP:Lnet/bytebuddy/utility/JavaType;

.field public static final enum METHOD_TYPE:Lnet/bytebuddy/utility/JavaType;

.field public static final enum MODULE:Lnet/bytebuddy/utility/JavaType;

.field public static final enum PARAMETER:Lnet/bytebuddy/utility/JavaType;


# instance fields
.field private final typeDescription:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 21
    new-instance v7, Lnet/bytebuddy/utility/JavaType;

    const-class v5, Ljava/lang/Object;

    const/4 v8, 0x0

    new-array v6, v8, [Ljava/lang/Class;

    const-string v1, "METHOD_HANDLE"

    const/4 v2, 0x0

    const-string v3, "java.lang.invoke.MethodHandle"

    const/16 v4, 0x401

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;[Ljava/lang/Class;)V

    sput-object v7, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLE:Lnet/bytebuddy/utility/JavaType;

    .line 26
    new-instance v0, Lnet/bytebuddy/utility/JavaType;

    const-class v14, Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v15, v1, [Ljava/lang/Class;

    const-class v2, Ljava/io/Serializable;

    aput-object v2, v15, v8

    const-string v10, "METHOD_TYPE"

    const/4 v11, 0x1

    const-string v12, "java.lang.invoke.MethodType"

    const/16 v13, 0x11

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;[Ljava/lang/Class;)V

    sput-object v0, Lnet/bytebuddy/utility/JavaType;->METHOD_TYPE:Lnet/bytebuddy/utility/JavaType;

    .line 31
    new-instance v0, Lnet/bytebuddy/utility/JavaType;

    const-class v21, Ljava/lang/Object;

    new-array v2, v8, [Ljava/lang/Class;

    const-string v17, "METHOD_HANDLES_LOOKUP"

    const/16 v18, 0x2

    const-string v19, "java.lang.invoke.MethodHandles$Lookup"

    const/16 v20, 0x19

    move-object/from16 v16, v0

    move-object/from16 v22, v2

    invoke-direct/range {v16 .. v22}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;[Ljava/lang/Class;)V

    sput-object v0, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLES_LOOKUP:Lnet/bytebuddy/utility/JavaType;

    .line 36
    new-instance v0, Lnet/bytebuddy/utility/JavaType;

    const-class v14, Ljava/lang/Object;

    new-array v15, v8, [Ljava/lang/Class;

    const-string v10, "CALL_SITE"

    const/4 v11, 0x3

    const-string v12, "java.lang.invoke.CallSite"

    const/16 v13, 0x401

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;[Ljava/lang/Class;)V

    sput-object v0, Lnet/bytebuddy/utility/JavaType;->CALL_SITE:Lnet/bytebuddy/utility/JavaType;

    .line 41
    new-instance v0, Lnet/bytebuddy/utility/JavaType;

    const-class v21, Ljava/lang/Object;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/reflect/AnnotatedElement;

    aput-object v3, v2, v8

    const-string v17, "PARAMETER"

    const/16 v18, 0x4

    const-string v19, "java.lang.reflect.Parameter"

    const/16 v20, 0x11

    move-object/from16 v16, v0

    move-object/from16 v22, v2

    invoke-direct/range {v16 .. v22}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;[Ljava/lang/Class;)V

    sput-object v0, Lnet/bytebuddy/utility/JavaType;->PARAMETER:Lnet/bytebuddy/utility/JavaType;

    .line 46
    new-instance v0, Lnet/bytebuddy/utility/JavaType;

    const-class v14, Ljava/lang/reflect/AccessibleObject;

    const/4 v2, 0x2

    new-array v15, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/reflect/Member;

    aput-object v3, v15, v8

    const-class v3, Ljava/lang/reflect/GenericDeclaration;

    aput-object v3, v15, v1

    const-string v10, "EXECUTABLE"

    const/4 v11, 0x5

    const-string v12, "java.lang.reflect.Executable"

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;[Ljava/lang/Class;)V

    sput-object v0, Lnet/bytebuddy/utility/JavaType;->EXECUTABLE:Lnet/bytebuddy/utility/JavaType;

    .line 51
    new-instance v0, Lnet/bytebuddy/utility/JavaType;

    const-class v21, Ljava/lang/Object;

    new-array v3, v8, [Ljava/lang/Class;

    const-string v17, "MODULE"

    const/16 v18, 0x6

    const-string v19, "java.lang.reflect.Module"

    move-object/from16 v16, v0

    move-object/from16 v22, v3

    invoke-direct/range {v16 .. v22}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;[Ljava/lang/Class;)V

    sput-object v0, Lnet/bytebuddy/utility/JavaType;->MODULE:Lnet/bytebuddy/utility/JavaType;

    const/4 v0, 0x7

    new-array v0, v0, [Lnet/bytebuddy/utility/JavaType;

    .line 16
    sget-object v3, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLE:Lnet/bytebuddy/utility/JavaType;

    aput-object v3, v0, v8

    sget-object v3, Lnet/bytebuddy/utility/JavaType;->METHOD_TYPE:Lnet/bytebuddy/utility/JavaType;

    aput-object v3, v0, v1

    sget-object v1, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLES_LOOKUP:Lnet/bytebuddy/utility/JavaType;

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/utility/JavaType;->CALL_SITE:Lnet/bytebuddy/utility/JavaType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/utility/JavaType;->PARAMETER:Lnet/bytebuddy/utility/JavaType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/utility/JavaType;->EXECUTABLE:Lnet/bytebuddy/utility/JavaType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/utility/JavaType;->MODULE:Lnet/bytebuddy/utility/JavaType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lnet/bytebuddy/utility/JavaType;->$VALUES:[Lnet/bytebuddy/utility/JavaType;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    :try_start_0
    new-instance p1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    new-instance p1, Lnet/bytebuddy/description/type/TypeDescription$Latent;

    new-instance p2, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType$ForLoadedType;

    invoke-direct {p2, p5}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType$ForLoadedType;-><init>(Ljava/lang/Class;)V

    new-instance p5, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes;

    invoke-direct {p5, p6}, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes;-><init>([Ljava/lang/reflect/Type;)V

    invoke-direct {p1, p3, p4, p2, p5}, Lnet/bytebuddy/description/type/TypeDescription$Latent;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V

    .line 76
    :goto_0
    iput-object p1, p0, Lnet/bytebuddy/utility/JavaType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/utility/JavaType;
    .locals 1

    .line 16
    const-class v0, Lnet/bytebuddy/utility/JavaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/utility/JavaType;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/utility/JavaType;
    .locals 1

    .line 16
    sget-object v0, Lnet/bytebuddy/utility/JavaType;->$VALUES:[Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v0}, [Lnet/bytebuddy/utility/JavaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/utility/JavaType;

    return-object v0
.end method


# virtual methods
.method public getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 86
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public load()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
